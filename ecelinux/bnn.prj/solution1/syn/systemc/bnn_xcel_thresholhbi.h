// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __bnn_xcel_thresholhbi_H__
#define __bnn_xcel_thresholhbi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct bnn_xcel_thresholhbi_ram : public sc_core::sc_module {

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


   SC_CTOR(bnn_xcel_thresholhbi_ram) {
        for (unsigned i = 0; i < 64 ; i = i + 1) {
            ram[i] = "0b00000100";
        }
        for (unsigned i = 64; i < 128 ; i = i + 1) {
            ram[i] = "0b11101110";
        }
        for (unsigned i = 128; i < 192 ; i = i + 1) {
            ram[i] = "0b00000100";
        }
        for (unsigned i = 192; i < 256 ; i = i + 1) {
            ram[i] = "0b00000010";
        }
        for (unsigned i = 256; i < 320 ; i = i + 1) {
            ram[i] = "0b00010100";
        }
        for (unsigned i = 320; i < 384 ; i = i + 1) {
            ram[i] = "0b00001011";
        }
        for (unsigned i = 384; i < 448 ; i = i + 1) {
            ram[i] = "0b00010101";
        }
        for (unsigned i = 448; i < 512 ; i = i + 1) {
            ram[i] = "0b11111000";
        }
        for (unsigned i = 512; i < 576 ; i = i + 1) {
            ram[i] = "0b00000111";
        }
        for (unsigned i = 576; i < 640 ; i = i + 1) {
            ram[i] = "0b00010100";
        }
        for (unsigned i = 640; i < 704 ; i = i + 1) {
            ram[i] = "0b00100010";
        }
        for (unsigned i = 704; i < 768 ; i = i + 1) {
            ram[i] = "0b00011111";
        }
        for (unsigned i = 768; i < 832 ; i = i + 1) {
            ram[i] = "0b00001110";
        }
        for (unsigned i = 832; i < 896 ; i = i + 1) {
            ram[i] = "0b00010100";
        }
        for (unsigned i = 896; i < 960 ; i = i + 1) {
            ram[i] = "0b11111110";
        }
        for (unsigned i = 960; i < 1024 ; i = i + 1) {
            ram[i] = "0b00010100";
        }
        for (unsigned i = 1024; i < 1088 ; i = i + 1) {
            ram[i] = "0b00000101";
        }
        for (unsigned i = 1088; i < 1152 ; i = i + 1) {
            ram[i] = "0b00011000";
        }
        for (unsigned i = 1152; i < 1216 ; i = i + 1) {
            ram[i] = "0b00100101";
        }
        for (unsigned i = 1216; i < 1280 ; i = i + 1) {
            ram[i] = "0b00101001";
        }
        for (unsigned i = 1280; i < 1344 ; i = i + 1) {
            ram[i] = "0b11111110";
        }
        for (unsigned i = 1344; i < 1408 ; i = i + 1) {
            ram[i] = "0b00000100";
        }
        for (unsigned i = 1408; i < 1472 ; i = i + 1) {
            ram[i] = "0b00001000";
        }
        for (unsigned i = 1472; i < 1536 ; i = i + 1) {
            ram[i] = "0b00101010";
        }
        for (unsigned i = 1536; i < 1600 ; i = i + 1) {
            ram[i] = "0b00100010";
        }
        for (unsigned i = 1600; i < 1664 ; i = i + 1) {
            ram[i] = "0b00001111";
        }
        for (unsigned i = 1664; i < 1728 ; i = i + 1) {
            ram[i] = "0b11100011";
        }
        for (unsigned i = 1728; i < 1792 ; i = i + 1) {
            ram[i] = "0b00011010";
        }
        for (unsigned i = 1792; i < 1856 ; i = i + 1) {
            ram[i] = "0b11111110";
        }
        for (unsigned i = 1856; i < 1920 ; i = i + 1) {
            ram[i] = "0b00010101";
        }
        for (unsigned i = 1920; i < 1984 ; i = i + 1) {
            ram[i] = "0b00001010";
        }
        for (unsigned i = 1984; i < 2048 ; i = i + 1) {
            ram[i] = "0b00001101";
        }
        for (unsigned i = 2048; i < 5184 ; i = i + 1) {
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


SC_MODULE(bnn_xcel_thresholhbi) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 5184;
static const unsigned AddressWidth = 13;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


bnn_xcel_thresholhbi_ram* meminst;


SC_CTOR(bnn_xcel_thresholhbi) {
meminst = new bnn_xcel_thresholhbi_ram("bnn_xcel_thresholhbi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~bnn_xcel_thresholhbi() {
    delete meminst;
}


};//endmodule
#endif
