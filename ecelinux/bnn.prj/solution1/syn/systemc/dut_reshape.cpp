// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dut_reshape.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dut_reshape::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dut_reshape::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> dut_reshape::ap_ST_st1_fsm_0 = "1";
const sc_lv<5> dut_reshape::ap_ST_st2_fsm_1 = "10";
const sc_lv<5> dut_reshape::ap_ST_st3_fsm_2 = "100";
const sc_lv<5> dut_reshape::ap_ST_st4_fsm_3 = "1000";
const sc_lv<5> dut_reshape::ap_ST_st5_fsm_4 = "10000";
const sc_lv<32> dut_reshape::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> dut_reshape::ap_const_lv1_1 = "1";
const sc_lv<32> dut_reshape::ap_const_lv32_1 = "1";
const sc_lv<32> dut_reshape::ap_const_lv32_2 = "10";
const sc_lv<1> dut_reshape::ap_const_lv1_0 = "0";
const sc_lv<32> dut_reshape::ap_const_lv32_3 = "11";
const sc_lv<6> dut_reshape::ap_const_lv6_0 = "000000";
const sc_lv<3> dut_reshape::ap_const_lv3_0 = "000";
const sc_lv<32> dut_reshape::ap_const_lv32_4 = "100";
const sc_lv<6> dut_reshape::ap_const_lv6_20 = "100000";
const sc_lv<6> dut_reshape::ap_const_lv6_1 = "1";
const sc_lv<3> dut_reshape::ap_const_lv3_4 = "100";
const sc_lv<3> dut_reshape::ap_const_lv3_1 = "1";
const sc_lv<2> dut_reshape::ap_const_lv2_0 = "00";
const sc_lv<5> dut_reshape::ap_const_lv5_0 = "00000";

dut_reshape::dut_reshape(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond2_fu_97_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond2_fu_97_p2 );

    SC_METHOD(thread_ap_sig_105);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_22);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_47);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_58);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_73);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_22 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_47 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_58 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_73 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_105 );

    SC_METHOD(thread_c_1_fu_103_p2);
    sensitive << ( c_reg_59 );

    SC_METHOD(thread_c_cast2_fu_93_p1);
    sensitive << ( c_reg_59 );

    SC_METHOD(thread_exitcond1_fu_109_p2);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( y_reg_71 );

    SC_METHOD(thread_exitcond2_fu_97_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( c_reg_59 );

    SC_METHOD(thread_exitcond_fu_137_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( x_reg_82 );

    SC_METHOD(thread_i_index_fu_171_p3);
    sensitive << ( tmp_4_fu_149_p2 );
    sensitive << ( tmp_1_fu_167_p1 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_7_fu_179_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_o_index_fu_162_p2);
    sensitive << ( c_cast2_reg_188 );
    sensitive << ( tmp_5_fu_154_p3 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( tmp_8_fu_184_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_tmp_1_fu_167_p1);
    sensitive << ( c_reg_59 );

    SC_METHOD(thread_tmp_2_fu_125_p3);
    sensitive << ( tmp_fu_121_p1 );

    SC_METHOD(thread_tmp_4_fu_149_p2);
    sensitive << ( tmp_2_reg_209 );
    sensitive << ( x_cast_fu_133_p1 );

    SC_METHOD(thread_tmp_5_fu_154_p3);
    sensitive << ( tmp_4_fu_149_p2 );

    SC_METHOD(thread_tmp_7_fu_179_p1);
    sensitive << ( i_index_fu_171_p3 );

    SC_METHOD(thread_tmp_8_fu_184_p1);
    sensitive << ( o_index_reg_222 );

    SC_METHOD(thread_tmp_fu_121_p1);
    sensitive << ( y_reg_71 );

    SC_METHOD(thread_x_1_fu_143_p2);
    sensitive << ( x_reg_82 );

    SC_METHOD(thread_x_cast_fu_133_p1);
    sensitive << ( x_reg_82 );

    SC_METHOD(thread_y_1_fu_115_p2);
    sensitive << ( y_reg_71 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond1_fu_109_p2 );
    sensitive << ( exitcond_fu_137_p2 );
    sensitive << ( exitcond2_fu_97_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dut_reshape_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_22, "ap_sig_22");
    sc_trace(mVcdFile, c_cast2_fu_93_p1, "c_cast2_fu_93_p1");
    sc_trace(mVcdFile, c_cast2_reg_188, "c_cast2_reg_188");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_47, "ap_sig_47");
    sc_trace(mVcdFile, c_1_fu_103_p2, "c_1_fu_103_p2");
    sc_trace(mVcdFile, c_1_reg_196, "c_1_reg_196");
    sc_trace(mVcdFile, y_1_fu_115_p2, "y_1_fu_115_p2");
    sc_trace(mVcdFile, y_1_reg_204, "y_1_reg_204");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_58, "ap_sig_58");
    sc_trace(mVcdFile, tmp_2_fu_125_p3, "tmp_2_fu_125_p3");
    sc_trace(mVcdFile, tmp_2_reg_209, "tmp_2_reg_209");
    sc_trace(mVcdFile, exitcond1_fu_109_p2, "exitcond1_fu_109_p2");
    sc_trace(mVcdFile, x_1_fu_143_p2, "x_1_fu_143_p2");
    sc_trace(mVcdFile, x_1_reg_217, "x_1_reg_217");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_73, "ap_sig_73");
    sc_trace(mVcdFile, o_index_fu_162_p2, "o_index_fu_162_p2");
    sc_trace(mVcdFile, o_index_reg_222, "o_index_reg_222");
    sc_trace(mVcdFile, exitcond_fu_137_p2, "exitcond_fu_137_p2");
    sc_trace(mVcdFile, c_reg_59, "c_reg_59");
    sc_trace(mVcdFile, y_reg_71, "y_reg_71");
    sc_trace(mVcdFile, exitcond2_fu_97_p2, "exitcond2_fu_97_p2");
    sc_trace(mVcdFile, x_reg_82, "x_reg_82");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_105, "ap_sig_105");
    sc_trace(mVcdFile, tmp_7_fu_179_p1, "tmp_7_fu_179_p1");
    sc_trace(mVcdFile, tmp_8_fu_184_p1, "tmp_8_fu_184_p1");
    sc_trace(mVcdFile, tmp_fu_121_p1, "tmp_fu_121_p1");
    sc_trace(mVcdFile, x_cast_fu_133_p1, "x_cast_fu_133_p1");
    sc_trace(mVcdFile, tmp_4_fu_149_p2, "tmp_4_fu_149_p2");
    sc_trace(mVcdFile, tmp_5_fu_154_p3, "tmp_5_fu_154_p3");
    sc_trace(mVcdFile, tmp_1_fu_167_p1, "tmp_1_fu_167_p1");
    sc_trace(mVcdFile, i_index_fu_171_p3, "i_index_fu_171_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dut_reshape::~dut_reshape() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void dut_reshape::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         !esl_seteq<1,1,1>(exitcond1_fu_109_p2.read(), ap_const_lv1_0))) {
        c_reg_59 = c_1_reg_196.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        c_reg_59 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_109_p2.read(), ap_const_lv1_0))) {
        x_reg_82 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        x_reg_82 = x_1_reg_217.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_137_p2.read()))) {
        y_reg_71 = y_1_reg_204.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_97_p2.read()))) {
        y_reg_71 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        c_1_reg_196 = c_1_fu_103_p2.read();
        c_cast2_reg_188 = c_cast2_fu_93_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_137_p2.read()))) {
        o_index_reg_222 = o_index_fu_162_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && esl_seteq<1,1,1>(exitcond1_fu_109_p2.read(), ap_const_lv1_0))) {
        tmp_2_reg_209 = tmp_2_fu_125_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        x_1_reg_217 = x_1_fu_143_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        y_1_reg_204 = y_1_fu_115_p2.read();
    }
}

void dut_reshape::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_97_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_97_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_sig_105() {
    ap_sig_105 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void dut_reshape::thread_ap_sig_22() {
    ap_sig_22 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void dut_reshape::thread_ap_sig_47() {
    ap_sig_47 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void dut_reshape::thread_ap_sig_58() {
    ap_sig_58 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void dut_reshape::thread_ap_sig_73() {
    ap_sig_73 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void dut_reshape::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_22.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_47.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_58.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_73.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void dut_reshape::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_105.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void dut_reshape::thread_c_1_fu_103_p2() {
    c_1_fu_103_p2 = (!c_reg_59.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(c_reg_59.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void dut_reshape::thread_c_cast2_fu_93_p1() {
    c_cast2_fu_93_p1 = esl_zext<9,6>(c_reg_59.read());
}

void dut_reshape::thread_exitcond1_fu_109_p2() {
    exitcond1_fu_109_p2 = (!y_reg_71.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(y_reg_71.read() == ap_const_lv3_4);
}

void dut_reshape::thread_exitcond2_fu_97_p2() {
    exitcond2_fu_97_p2 = (!c_reg_59.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(c_reg_59.read() == ap_const_lv6_20);
}

void dut_reshape::thread_exitcond_fu_137_p2() {
    exitcond_fu_137_p2 = (!x_reg_82.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(x_reg_82.read() == ap_const_lv3_4);
}

void dut_reshape::thread_i_index_fu_171_p3() {
    i_index_fu_171_p3 = esl_concat<5,4>(tmp_1_fu_167_p1.read(), tmp_4_fu_149_p2.read());
}

void dut_reshape::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<13>) (tmp_7_fu_179_p1.read());
}

void dut_reshape::thread_input_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void dut_reshape::thread_o_index_fu_162_p2() {
    o_index_fu_162_p2 = (!tmp_5_fu_154_p3.read().is_01() || !c_cast2_reg_188.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_5_fu_154_p3.read()) + sc_biguint<9>(c_cast2_reg_188.read()));
}

void dut_reshape::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<13>) (tmp_8_fu_184_p1.read());
}

void dut_reshape::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void dut_reshape::thread_output_r_d0() {
    output_r_d0 = input_r_q0.read();
}

void dut_reshape::thread_output_r_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()))) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void dut_reshape::thread_tmp_1_fu_167_p1() {
    tmp_1_fu_167_p1 = c_reg_59.read().range(5-1, 0);
}

void dut_reshape::thread_tmp_2_fu_125_p3() {
    tmp_2_fu_125_p3 = esl_concat<2,2>(tmp_fu_121_p1.read(), ap_const_lv2_0);
}

void dut_reshape::thread_tmp_4_fu_149_p2() {
    tmp_4_fu_149_p2 = (!x_cast_fu_133_p1.read().is_01() || !tmp_2_reg_209.read().is_01())? sc_lv<4>(): (sc_biguint<4>(x_cast_fu_133_p1.read()) + sc_biguint<4>(tmp_2_reg_209.read()));
}

void dut_reshape::thread_tmp_5_fu_154_p3() {
    tmp_5_fu_154_p3 = esl_concat<4,5>(tmp_4_fu_149_p2.read(), ap_const_lv5_0);
}

void dut_reshape::thread_tmp_7_fu_179_p1() {
    tmp_7_fu_179_p1 = esl_zext<64,9>(i_index_fu_171_p3.read());
}

void dut_reshape::thread_tmp_8_fu_184_p1() {
    tmp_8_fu_184_p1 = esl_zext<64,9>(o_index_reg_222.read());
}

void dut_reshape::thread_tmp_fu_121_p1() {
    tmp_fu_121_p1 = y_reg_71.read().range(2-1, 0);
}

void dut_reshape::thread_x_1_fu_143_p2() {
    x_1_fu_143_p2 = (!x_reg_82.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(x_reg_82.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void dut_reshape::thread_x_cast_fu_133_p1() {
    x_cast_fu_133_p1 = esl_zext<4,3>(x_reg_82.read());
}

void dut_reshape::thread_y_1_fu_115_p2() {
    y_1_fu_115_p2 = (!y_reg_71.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(y_reg_71.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void dut_reshape::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_97_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(exitcond1_fu_109_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_137_p2.read())) {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}
