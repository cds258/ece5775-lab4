//==========================================================================
// layer.cpp
//==========================================================================
// @brief: this file contains all layers

#include "layer.h"
#include "model.h"
#include <cmath>
#include <iostream>

using namespace std;

// helper function to neglect padding pixels
inline bool if_mac(int x, int y, int I)
{
        if (x < PADDING / 2 || x >= (I - PADDING / 2) || y < PADDING / 2 || y >= (I - PADDING / 2))
                return false;
        return true;
}

//----------------------------------------------------------
// Padding
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              M - number of input fmaps
//              I - width of input fmaps
// @param[out] : output - output fmaps

void pad(bitpack input[MAX_FMAP_PACKED], bitpack output[MAX_FMAP_PACKED], int M, int I) {
  int ifmap_size = I * I;
  int ofmap_size = (I+PADDING) * (I+PADDING);

  for (int i = 0; i < MAX_FMAP_PACKED; i++) output[i] = 0;

  for (int x = 0; x < I; x++) {
    for (int y = 0; y < I; y++) {
      for (int m = 0; m < M; m++) {
        //int i_index = x + y*I + m*ifmap_size;
        int i_index = x + y*I;
        //int o_index = (x + PADDING/2) + (y + PADDING/2)*(I + PADDING) + m*ofmap_size;
        int o_index = (x + PADDING/2) + (y + PADDING/2)*(I + PADDING);
        //output[o_index] = input[i_index];
        output[o_index][m] = input[i_index][m];
      }
    }
  }
}

//----------------------------------------------------------
// Perform Convolution Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              threshold - threshold for batchnorm operation
//              M - number of input fmaps
//              N - number of output fmaps
//              I - width of input fmaps
//              L - id for conv layers: 0 means conv1, 1 means conv2
// @param[out] : output - output fmaps
void conv(bitpack input[MAX_FMAP_PACKED], bitpack output[MAX_FMAP_PACKED], const bit8_t threshold[MAX_FMAP], int M, int N, int I, int L)
{
  int O = I - F + 1;
  int ifmap_size = I * I;
  int ofmap_size = O * O;

  bitpack w_conv1_packed[FILTER_SIZE * N]; 
  bitpack w_conv2_packed[FILTER_SIZE * N]; 

  if(L==0){
    for(int n=0; n < N_CHANNEL1; n++){
      for(int i=0; i < FILTER_SIZE; i++){
        for(int m=0; m < 1; m++){
          w_conv1_packed[ FILTER_SIZE * n + i ][m] = w_conv1[(n + m * N) * FILTER_SIZE + i]; 
        }
      }
    }
  }

  else{
    for(int n=0; n < N_CHANNEL2; n++){
      for(int i=0; i < FILTER_SIZE; i++){
        for(int m= 0; m < N_CHANNEL1; m++){
          w_conv2_packed[ FILTER_SIZE * n + i ][m] = w_conv2[(n + m * N) * FILTER_SIZE + i]; 
        }
      }
    }
  }

  bitpack xnor; 
  
  // MAC and batchnorm
  LOOP_N: for (int n = 0; n < N; n++){
    LOOP_X: for (int x = 0; x < O; x++){
      LOOP_Y: for (int y = 0; y < O; y++){
        int sum = 0;
        int o_index_unpacked = x + y * O + n * ofmap_size;
        int o_index = x + y * O;
        LOOP_C: for (int c = 0; c < F; c++){
          int one_out = 0;
          int mac_num = 0;
          LOOP_R: for (int r = 0; r < F; r++){ 
              if (if_mac(x + c, y + r, I)) { //neglect padding pixels in mac
                //int i_index = x + c + (y + r) * I + m * ifmap_size;
                int i_index = x + c + (y + r) * I;
                //int w_index = c + r * F + (n + m * N) * FILTER_SIZE;
                int w_index = c + r * F + (n * FILTER_SIZE);
                // if (L == 0)
                //   xnor = input[i_index] ^ w_conv1[w_index]; //XNOR
                // else        
                //   xnor = input[i_index] ^ w_conv2[w_index];
                LOOP_M: for (int m = 0; m < M; m++){ // unroll
                  if (L == 0) one_out += input[i_index][m] == w_conv1_packed[w_index][m]; //XNOR
                  else        one_out += input[i_index][m] == w_conv2_packed[w_index][m];
                  mac_num++;
                  // one_out += xnor[m]; 
                  // mac_num++;
                }
              }
          }
          sum += (one_out << 1) - mac_num;
        }
        output[o_index][n] = sum > threshold[o_index_unpacked] ? 1 : 0;
      }
    }
  }
}

//----------------------------------------------------------
// Max pooling
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              M - number of input fmaps
//              I - width of input fmaps
// @param[out] : output - output fmaps

void max_pool(bitpack input[MAX_FMAP_PACKED], bitpack output[MAX_FMAP_PACKED], int M, int I){
  int O = I / 2;
  int ifmap_size = I * I;
  int ofmap_size = O * O;

  for (int i = 0; i < MAX_FMAP_PACKED; i++) output[i] = 0;

  for (int x = 0; x < O; x++){
    for (int y = 0; y < O; y++){
      for (int m = 0; m < M; m++){
        //int o_index = x + y * O + m * ofmap_size;
        int o_index = x + y * O;
        bit max = 0;
        for (int c = 0; c < 2; c++){
          for (int r = 0; r < 2; r++){
            //int i_index = 2 * x + c + (2 * y + r) * I + m * ifmap_size;
            int i_index = 2 * x + c + (2 * y + r) * I;
            if (input[i_index][m]) max = 1; //this is because bit 1 is represented as 0xff memory
          }
        }
        output[o_index][m] = max;
      }
    }
  }
}

//----------------------------------------------------------
// Reshape the Output from Conv Layer
//----------------------------------------------------------
// @param[in] : input - output fmaps from the last conv layer
// @param[out] : output - input famps of the first dense layer

//again here statements blacked out are not packing the array
void reshape(bitpack* input, bitpack* output) {
  for (int y = 0; y < O_WIDTH; y++) {
    for (int x = 0; x < O_WIDTH; x++) {
      for (int n = 0; n < N_CHANNEL2; n++) {
        int o_index = n + (x + y * O_WIDTH ) * N_CHANNEL2;
        //int i_index = x + y * O_WIDTH + n * O_WIDTH*O_WIDTH;
        int i_index = x + y * O_WIDTH;
        if(o_index < 256) output[0][o_index] = input[i_index][n];
        else output[1][ o_index - 256 ] = input[i_index][n];
        //output[o_index] = input[i_index][n];
      }
    }
  } 
}

//----------------------------------------------------------
// Perform Dense Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - weights
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
//              use_relu - enable relu or not
// @param[out] : output - output fmaps

//commented out parts are statements if the array was not packed
void dense(bitpack input[MAX_FMAP_PACKED], bitpack output[MAX_FMAP_PACKED], const bit* weight, const float* bias, int M, int N, bool use_relu){
  float var_w = 2. / M;
  float c = sqrt(var_w);
  float max = -100;
  bitpack xnor1; 
  bitpack xnor2; 

  bitpack weight_pack_lt256[256];
  bitpack weight_pack_gt256[256];

  //printf("break\n"); 

  for(int n = 0; n < N; n++){
    for(int m = 0; m < M; m++){
      int w_index = m * N + n;
      if( m < 256 ) weight_pack_lt256[n][m] = weight[w_index];
      else weight_pack_gt256[n][m - 256] = weight[w_index];
    }
  }

  for (int n = 0; n < N; n++){
    float one_out = 0;
    if(use_relu){
      xnor1 = input[0] ^ weight_pack_lt256[n]; 
      xnor2 = input[1] ^ weight_pack_gt256[n]; 
    }
    else{
      xnor1 = input[0] ^ weight_pack_lt256[n]; 
      xnor2 = 0;
    }
    for (int m = 0; m < 256; m++) {
      //int w_index = m * N + n;
      //one_out += input[0][m] == weight[w_index]; //XNOR
      //one_out += input[m] == weight[w_index]; //XNOR
      one_out += xnor1[m] + xnor2[m];
    }
    one_out = (2 * one_out - M)*c;
    float biased = one_out + bias[n];
    if (use_relu) output[0][n] = (biased > 0) ? 1 : 0;
    //if (use_relu) output[n] = (biased > 0) ? 1 : 0;
    else { // last layer
      if (biased > max) {
        max = biased;
        output[0][n] = 1;
        //output[n] = 1;
      } else {
        output[0][n] = 0;
        //output[n] = 0;
      }
    }
  }
}
