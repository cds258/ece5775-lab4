// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "reshape.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic reshape::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic reshape::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> reshape::ap_ST_fsm_state1 = "1";
const sc_lv<5> reshape::ap_ST_fsm_state2 = "10";
const sc_lv<5> reshape::ap_ST_fsm_state3 = "100";
const sc_lv<5> reshape::ap_ST_fsm_state4 = "1000";
const sc_lv<5> reshape::ap_ST_fsm_state5 = "10000";
const sc_lv<32> reshape::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> reshape::ap_const_lv32_1 = "1";
const sc_lv<32> reshape::ap_const_lv32_2 = "10";
const sc_lv<1> reshape::ap_const_lv1_0 = "0";
const sc_lv<32> reshape::ap_const_lv32_3 = "11";
const sc_lv<6> reshape::ap_const_lv6_0 = "000000";
const sc_lv<1> reshape::ap_const_lv1_1 = "1";
const sc_lv<3> reshape::ap_const_lv3_0 = "000";
const sc_lv<32> reshape::ap_const_lv32_4 = "100";
const sc_lv<6> reshape::ap_const_lv6_20 = "100000";
const sc_lv<6> reshape::ap_const_lv6_1 = "1";
const sc_lv<3> reshape::ap_const_lv3_4 = "100";
const sc_lv<3> reshape::ap_const_lv3_1 = "1";
const sc_lv<2> reshape::ap_const_lv2_0 = "00";
const sc_lv<5> reshape::ap_const_lv5_0 = "00000";
const bool reshape::ap_const_boolean_1 = true;

reshape::reshape(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln133_fu_157_p2);
    sensitive << ( shl_ln_reg_224 );
    sensitive << ( zext_ln133_1_fu_153_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln130_fu_101_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln130_fu_101_p2 );

    SC_METHOD(thread_c_fu_107_p2);
    sensitive << ( c_0_reg_63 );

    SC_METHOD(thread_i_index_fu_189_p2);
    sensitive << ( zext_ln133_reg_229 );
    sensitive << ( tmp_fu_179_p4 );

    SC_METHOD(thread_icmp_ln130_fu_101_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( c_0_reg_63 );

    SC_METHOD(thread_icmp_ln131_fu_113_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( y_0_reg_75 );

    SC_METHOD(thread_icmp_ln132_fu_141_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( x_0_reg_86 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln135_fu_194_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_o_index_fu_170_p2);
    sensitive << ( zext_ln130_reg_203 );
    sensitive << ( shl_ln133_1_fu_162_p3 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln135_1_fu_199_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_shl_ln133_1_fu_162_p3);
    sensitive << ( add_ln133_fu_157_p2 );

    SC_METHOD(thread_shl_ln_fu_129_p3);
    sensitive << ( trunc_ln133_fu_125_p1 );

    SC_METHOD(thread_tmp_fu_179_p4);
    sensitive << ( x_0_reg_86 );
    sensitive << ( trunc_ln134_fu_175_p1 );

    SC_METHOD(thread_trunc_ln133_fu_125_p1);
    sensitive << ( y_0_reg_75 );

    SC_METHOD(thread_trunc_ln134_fu_175_p1);
    sensitive << ( c_0_reg_63 );

    SC_METHOD(thread_x_fu_147_p2);
    sensitive << ( x_0_reg_86 );

    SC_METHOD(thread_y_fu_119_p2);
    sensitive << ( y_0_reg_75 );

    SC_METHOD(thread_zext_ln130_fu_97_p1);
    sensitive << ( c_0_reg_63 );

    SC_METHOD(thread_zext_ln133_1_fu_153_p1);
    sensitive << ( x_0_reg_86 );

    SC_METHOD(thread_zext_ln133_fu_137_p1);
    sensitive << ( shl_ln_fu_129_p3 );

    SC_METHOD(thread_zext_ln135_1_fu_199_p1);
    sensitive << ( o_index_reg_242 );

    SC_METHOD(thread_zext_ln135_fu_194_p1);
    sensitive << ( i_index_fu_189_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln131_fu_113_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln132_fu_141_p2 );
    sensitive << ( icmp_ln130_fu_101_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "reshape_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, input_r_address0, "(port)input_r_address0");
    sc_trace(mVcdFile, input_r_ce0, "(port)input_r_ce0");
    sc_trace(mVcdFile, input_r_q0, "(port)input_r_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln130_fu_97_p1, "zext_ln130_fu_97_p1");
    sc_trace(mVcdFile, zext_ln130_reg_203, "zext_ln130_reg_203");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, c_fu_107_p2, "c_fu_107_p2");
    sc_trace(mVcdFile, c_reg_211, "c_reg_211");
    sc_trace(mVcdFile, y_fu_119_p2, "y_fu_119_p2");
    sc_trace(mVcdFile, y_reg_219, "y_reg_219");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, shl_ln_fu_129_p3, "shl_ln_fu_129_p3");
    sc_trace(mVcdFile, shl_ln_reg_224, "shl_ln_reg_224");
    sc_trace(mVcdFile, icmp_ln131_fu_113_p2, "icmp_ln131_fu_113_p2");
    sc_trace(mVcdFile, zext_ln133_fu_137_p1, "zext_ln133_fu_137_p1");
    sc_trace(mVcdFile, zext_ln133_reg_229, "zext_ln133_reg_229");
    sc_trace(mVcdFile, x_fu_147_p2, "x_fu_147_p2");
    sc_trace(mVcdFile, x_reg_237, "x_reg_237");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, o_index_fu_170_p2, "o_index_fu_170_p2");
    sc_trace(mVcdFile, o_index_reg_242, "o_index_reg_242");
    sc_trace(mVcdFile, icmp_ln132_fu_141_p2, "icmp_ln132_fu_141_p2");
    sc_trace(mVcdFile, c_0_reg_63, "c_0_reg_63");
    sc_trace(mVcdFile, y_0_reg_75, "y_0_reg_75");
    sc_trace(mVcdFile, icmp_ln130_fu_101_p2, "icmp_ln130_fu_101_p2");
    sc_trace(mVcdFile, x_0_reg_86, "x_0_reg_86");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln135_fu_194_p1, "zext_ln135_fu_194_p1");
    sc_trace(mVcdFile, zext_ln135_1_fu_199_p1, "zext_ln135_1_fu_199_p1");
    sc_trace(mVcdFile, trunc_ln133_fu_125_p1, "trunc_ln133_fu_125_p1");
    sc_trace(mVcdFile, zext_ln133_1_fu_153_p1, "zext_ln133_1_fu_153_p1");
    sc_trace(mVcdFile, add_ln133_fu_157_p2, "add_ln133_fu_157_p2");
    sc_trace(mVcdFile, shl_ln133_1_fu_162_p3, "shl_ln133_1_fu_162_p3");
    sc_trace(mVcdFile, trunc_ln134_fu_175_p1, "trunc_ln134_fu_175_p1");
    sc_trace(mVcdFile, tmp_fu_179_p4, "tmp_fu_179_p4");
    sc_trace(mVcdFile, i_index_fu_189_p2, "i_index_fu_189_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

reshape::~reshape() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void reshape::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln131_fu_113_p2.read(), ap_const_lv1_1))) {
        c_0_reg_63 = c_reg_211.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        c_0_reg_63 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln131_fu_113_p2.read(), ap_const_lv1_0))) {
        x_0_reg_86 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        x_0_reg_86 = x_reg_237.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln130_fu_101_p2.read()))) {
        y_0_reg_75 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln132_fu_141_p2.read(), ap_const_lv1_1))) {
        y_0_reg_75 = y_reg_219.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c_reg_211 = c_fu_107_p2.read();
        zext_ln130_reg_203 = zext_ln130_fu_97_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln132_fu_141_p2.read()))) {
        o_index_reg_242 = o_index_fu_170_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln131_fu_113_p2.read(), ap_const_lv1_0))) {
        shl_ln_reg_224 = shl_ln_fu_129_p3.read();
        zext_ln133_reg_229 = zext_ln133_fu_137_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        x_reg_237 = x_fu_147_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_reg_219 = y_fu_119_p2.read();
    }
}

void reshape::thread_add_ln133_fu_157_p2() {
    add_ln133_fu_157_p2 = (!zext_ln133_1_fu_153_p1.read().is_01() || !shl_ln_reg_224.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln133_1_fu_153_p1.read()) + sc_biguint<4>(shl_ln_reg_224.read()));
}

void reshape::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void reshape::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void reshape::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void reshape::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void reshape::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void reshape::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln130_fu_101_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void reshape::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void reshape::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln130_fu_101_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void reshape::thread_c_fu_107_p2() {
    c_fu_107_p2 = (!c_0_reg_63.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(c_0_reg_63.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void reshape::thread_i_index_fu_189_p2() {
    i_index_fu_189_p2 = (!zext_ln133_reg_229.read().is_01() || !tmp_fu_179_p4.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln133_reg_229.read()) + sc_biguint<9>(tmp_fu_179_p4.read()));
}

void reshape::thread_icmp_ln130_fu_101_p2() {
    icmp_ln130_fu_101_p2 = (!c_0_reg_63.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(c_0_reg_63.read() == ap_const_lv6_20);
}

void reshape::thread_icmp_ln131_fu_113_p2() {
    icmp_ln131_fu_113_p2 = (!y_0_reg_75.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(y_0_reg_75.read() == ap_const_lv3_4);
}

void reshape::thread_icmp_ln132_fu_141_p2() {
    icmp_ln132_fu_141_p2 = (!x_0_reg_86.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(x_0_reg_86.read() == ap_const_lv3_4);
}

void reshape::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<13>) (zext_ln135_fu_194_p1.read());
}

void reshape::thread_input_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void reshape::thread_o_index_fu_170_p2() {
    o_index_fu_170_p2 = (!zext_ln130_reg_203.read().is_01() || !shl_ln133_1_fu_162_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln130_reg_203.read()) + sc_biguint<9>(shl_ln133_1_fu_162_p3.read()));
}

void reshape::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<13>) (zext_ln135_1_fu_199_p1.read());
}

void reshape::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void reshape::thread_output_r_d0() {
    output_r_d0 = input_r_q0.read();
}

void reshape::thread_output_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void reshape::thread_shl_ln133_1_fu_162_p3() {
    shl_ln133_1_fu_162_p3 = esl_concat<4,5>(add_ln133_fu_157_p2.read(), ap_const_lv5_0);
}

void reshape::thread_shl_ln_fu_129_p3() {
    shl_ln_fu_129_p3 = esl_concat<2,2>(trunc_ln133_fu_125_p1.read(), ap_const_lv2_0);
}

void reshape::thread_tmp_fu_179_p4() {
    tmp_fu_179_p4 = esl_concat<6,3>(esl_concat<5,1>(trunc_ln134_fu_175_p1.read(), ap_const_lv1_0), x_0_reg_86.read());
}

void reshape::thread_trunc_ln133_fu_125_p1() {
    trunc_ln133_fu_125_p1 = y_0_reg_75.read().range(2-1, 0);
}

void reshape::thread_trunc_ln134_fu_175_p1() {
    trunc_ln134_fu_175_p1 = c_0_reg_63.read().range(5-1, 0);
}

void reshape::thread_x_fu_147_p2() {
    x_fu_147_p2 = (!x_0_reg_86.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(x_0_reg_86.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void reshape::thread_y_fu_119_p2() {
    y_fu_119_p2 = (!y_0_reg_75.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(y_0_reg_75.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void reshape::thread_zext_ln130_fu_97_p1() {
    zext_ln130_fu_97_p1 = esl_zext<9,6>(c_0_reg_63.read());
}

void reshape::thread_zext_ln133_1_fu_153_p1() {
    zext_ln133_1_fu_153_p1 = esl_zext<4,3>(x_0_reg_86.read());
}

void reshape::thread_zext_ln133_fu_137_p1() {
    zext_ln133_fu_137_p1 = esl_zext<9,4>(shl_ln_fu_129_p3.read());
}

void reshape::thread_zext_ln135_1_fu_199_p1() {
    zext_ln135_1_fu_199_p1 = esl_zext<64,9>(o_index_reg_242.read());
}

void reshape::thread_zext_ln135_fu_194_p1() {
    zext_ln135_fu_194_p1 = esl_zext<64,9>(i_index_fu_189_p2.read());
}

void reshape::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln130_fu_101_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln131_fu_113_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln132_fu_141_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}
