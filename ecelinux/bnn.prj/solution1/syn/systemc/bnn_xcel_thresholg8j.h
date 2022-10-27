// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __bnn_xcel_thresholg8j_H__
#define __bnn_xcel_thresholg8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct bnn_xcel_thresholg8j_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 5184;
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


   SC_CTOR(bnn_xcel_thresholg8j_ram) {
        for (unsigned i = 0; i < 256 ; i = i + 1) {
            ram[i] = "0b00000110";
        }
        for (unsigned i = 256; i < 768 ; i = i + 1) {
            ram[i] = "0b11111110";
        }
        for (unsigned i = 768; i < 1024 ; i = i + 1) {
            ram[i] = "0b00010100";
        }
        for (unsigned i = 1024; i < 1280 ; i = i + 1) {
            ram[i] = "0b11110100";
        }
        for (unsigned i = 1280; i < 1536 ; i = i + 1) {
            ram[i] = "0b11111100";
        }
        for (unsigned i = 1536; i < 1792 ; i = i + 1) {
            ram[i] = "0b11111001";
        }
        for (unsigned i = 1792; i < 2048 ; i = i + 1) {
            ram[i] = "0b11110011";
        }
        for (unsigned i = 2048; i < 2304 ; i = i + 1) {
            ram[i] = "0b11111100";
        }
        for (unsigned i = 2304; i < 2560 ; i = i + 1) {
            ram[i] = "0b00001000";
        }
        for (unsigned i = 2560; i < 2816 ; i = i + 1) {
            ram[i] = "0b00001110";
        }
        for (unsigned i = 2816; i < 3072 ; i = i + 1) {
            ram[i] = "0b00000100";
        }
        for (unsigned i = 3072; i < 3328 ; i = i + 1) {
            ram[i] = "0b00010010";
        }
        for (unsigned i = 3328; i < 3584 ; i = i + 1) {
            ram[i] = "0b11111111";
        }
        for (unsigned i = 3584; i < 3840 ; i = i + 1) {
            ram[i] = "0b11110110";
        }
        for (unsigned i = 3840; i < 4096 ; i = i + 1) {
            ram[i] = "0b11111011";
        }
        for (unsigned i = 4096; i < 5184 ; i = i + 1) {
            ram[i] = "0b00000000";
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


SC_MODULE(bnn_xcel_thresholg8j) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 5184;
static const unsigned AddressWidth = 13;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


bnn_xcel_thresholg8j_ram* meminst;


SC_CTOR(bnn_xcel_thresholg8j) {
meminst = new bnn_xcel_thresholg8j_ram("bnn_xcel_thresholg8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~bnn_xcel_thresholg8j() {
    delete meminst;
}


};//endmodule
#endif
