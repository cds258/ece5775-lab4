// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_w_conv1_H__
#define __conv_w_conv1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_w_conv1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 1;
  static const unsigned AddressRange = 4608;
  static const unsigned AddressWidth = 13;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_w_conv1_ram) {
        ram[0] = "0b1";
        ram[1] = "0b0";
        ram[2] = "0b0";
        ram[3] = "0b1";
        ram[4] = "0b0";
        ram[5] = "0b0";
        ram[6] = "0b0";
        ram[7] = "0b1";
        ram[8] = "0b1";
        ram[9] = "0b0";
        ram[10] = "0b0";
        ram[11] = "0b0";
        ram[12] = "0b1";
        ram[13] = "0b1";
        ram[14] = "0b1";
        ram[15] = "0b1";
        for (unsigned i = 16; i < 21 ; i = i + 1) {
            ram[i] = "0b0";
        }
        ram[21] = "0b1";
        ram[22] = "0b1";
        ram[23] = "0b0";
        ram[24] = "0b1";
        ram[25] = "0b1";
        ram[26] = "0b1";
        ram[27] = "0b0";
        ram[28] = "0b0";
        ram[29] = "0b0";
        ram[30] = "0b1";
        ram[31] = "0b0";
        ram[32] = "0b0";
        ram[33] = "0b1";
        ram[34] = "0b0";
        ram[35] = "0b0";
        ram[36] = "0b1";
        ram[37] = "0b0";
        ram[38] = "0b1";
        ram[39] = "0b1";
        ram[40] = "0b1";
        ram[41] = "0b1";
        ram[42] = "0b0";
        ram[43] = "0b1";
        ram[44] = "0b1";
        ram[45] = "0b0";
        ram[46] = "0b0";
        ram[47] = "0b0";
        ram[48] = "0b0";
        for (unsigned i = 49; i < 56 ; i = i + 1) {
            ram[i] = "0b1";
        }
        ram[56] = "0b0";
        ram[57] = "0b1";
        ram[58] = "0b1";
        ram[59] = "0b1";
        ram[60] = "0b0";
        ram[61] = "0b1";
        ram[62] = "0b1";
        ram[63] = "0b0";
        for (unsigned i = 64; i < 69 ; i = i + 1) {
            ram[i] = "0b1";
        }
        ram[69] = "0b0";
        ram[70] = "0b0";
        for (unsigned i = 71; i < 76 ; i = i + 1) {
            ram[i] = "0b1";
        }
        ram[76] = "0b0";
        ram[77] = "0b0";
        ram[78] = "0b0";
        for (unsigned i = 79; i < 84 ; i = i + 1) {
            ram[i] = "0b1";
        }
        for (unsigned i = 84; i < 96 ; i = i + 1) {
            ram[i] = "0b0";
        }
        ram[96] = "0b1";
        ram[97] = "0b0";
        ram[98] = "0b1";
        for (unsigned i = 99; i < 104 ; i = i + 1) {
            ram[i] = "0b0";
        }
        ram[104] = "0b1";
        ram[105] = "0b1";
        ram[106] = "0b1";
        ram[107] = "0b1";
        for (unsigned i = 108; i < 116 ; i = i + 1) {
            ram[i] = "0b0";
        }
        ram[116] = "0b1";
        ram[117] = "0b0";
        for (unsigned i = 118; i < 123 ; i = i + 1) {
            ram[i] = "0b1";
        }
        ram[123] = "0b0";
        ram[124] = "0b0";
        ram[125] = "0b0";
        ram[126] = "0b0";
        ram[127] = "0b1";
        ram[128] = "0b0";
        ram[129] = "0b1";
        ram[130] = "0b1";
        ram[131] = "0b1";
        ram[132] = "0b0";
        ram[133] = "0b1";
        ram[134] = "0b1";
        ram[135] = "0b0";
        ram[136] = "0b0";
        ram[137] = "0b1";
        ram[138] = "0b1";
        ram[139] = "0b1";
        ram[140] = "0b0";
        ram[141] = "0b1";
        ram[142] = "0b1";
        for (unsigned i = 143; i < 4608 ; i = i + 1) {
            ram[i] = "0b0";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(conv_w_conv1) {


static const unsigned DataWidth = 1;
static const unsigned AddressRange = 4608;
static const unsigned AddressWidth = 13;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_w_conv1_ram* meminst;


SC_CTOR(conv_w_conv1) {
meminst = new conv_w_conv1_ram("conv_w_conv1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_w_conv1() {
    delete meminst;
}


};//endmodule
#endif
