// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_HH_
#define _conv_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_mac_muladd_9ncud.h"
#include "dut_mac_muladd_9ndEe.h"
#include "conv_w_conv1.h"
#include "conv_w_conv2.h"

namespace ap_rtl {

struct conv : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<1> > input_r_q0;
    sc_out< sc_lv<13> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<1> > output_r_d0;
    sc_out< sc_lv<13> > threshold_V_address0;
    sc_out< sc_logic > threshold_V_ce0;
    sc_in< sc_lv<8> > threshold_V_q0;
    sc_in< sc_lv<7> > M;
    sc_in< sc_lv<7> > N;
    sc_in< sc_lv<6> > I;
    sc_in< sc_lv<1> > L;


    // Module declarations
    conv(sc_module_name name);
    SC_HAS_PROCESS(conv);

    ~conv();

    sc_trace_file* mVcdFile;

    conv_w_conv1* w_conv1_U;
    conv_w_conv2* w_conv2_U;
    dut_mac_muladd_9ncud<1,1,9,5,5,13>* dut_mac_muladd_9ncud_U9;
    dut_mac_muladd_9ndEe<1,1,9,6,5,13>* dut_mac_muladd_9ndEe_U10;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<13> > w_conv1_address0;
    sc_signal< sc_logic > w_conv1_ce0;
    sc_signal< sc_lv<1> > w_conv1_q0;
    sc_signal< sc_lv<13> > w_conv2_address0;
    sc_signal< sc_logic > w_conv2_ce0;
    sc_signal< sc_lv<1> > w_conv2_q0;
    sc_signal< sc_lv<1> > L_read_read_fu_90_p2;
    sc_signal< sc_lv<5> > O_fu_334_p2;
    sc_signal< sc_lv<5> > O_reg_752;
    sc_signal< sc_lv<13> > O_cast21_cast_fu_340_p1;
    sc_signal< sc_lv<13> > O_cast21_cast_reg_758;
    sc_signal< sc_lv<9> > zext_ln68_fu_344_p1;
    sc_signal< sc_lv<9> > zext_ln68_reg_763;
    sc_signal< sc_lv<5> > add_ln16_fu_348_p2;
    sc_signal< sc_lv<5> > add_ln16_reg_768;
    sc_signal< sc_lv<6> > trunc_ln69_fu_354_p1;
    sc_signal< sc_lv<6> > trunc_ln69_reg_774;
    sc_signal< sc_lv<9> > zext_ln75_fu_358_p1;
    sc_signal< sc_lv<9> > zext_ln75_reg_779;
    sc_signal< sc_lv<9> > zext_ln76_fu_362_p1;
    sc_signal< sc_lv<9> > zext_ln76_reg_784;
    sc_signal< sc_lv<13> > I_cast_fu_366_p1;
    sc_signal< sc_lv<13> > I_cast_reg_789;
    sc_signal< sc_lv<9> > zext_ln64_fu_370_p1;
    sc_signal< sc_lv<9> > zext_ln64_reg_794;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > n_fu_383_p2;
    sc_signal< sc_lv<6> > n_reg_802;
    sc_signal< sc_lv<9> > mul_ln68_fu_389_p2;
    sc_signal< sc_lv<9> > mul_ln68_reg_807;
    sc_signal< sc_lv<1> > icmp_ln64_fu_378_p2;
    sc_signal< sc_lv<13> > zext_ln65_fu_394_p1;
    sc_signal< sc_lv<13> > zext_ln65_reg_812;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > x_fu_403_p2;
    sc_signal< sc_lv<5> > x_reg_820;
    sc_signal< sc_lv<9> > zext_ln66_fu_409_p1;
    sc_signal< sc_lv<9> > zext_ln66_reg_825;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > y_fu_418_p2;
    sc_signal< sc_lv<5> > y_reg_833;
    sc_signal< sc_lv<13> > grp_fu_729_p3;
    sc_signal< sc_lv<13> > o_index_reg_838;
    sc_signal< sc_lv<1> > icmp_ln66_fu_413_p2;
    sc_signal< sc_lv<9> > add_ln76_3_fu_433_p2;
    sc_signal< sc_lv<9> > add_ln76_3_reg_843;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<9> > add_ln76_4_fu_438_p2;
    sc_signal< sc_lv<9> > add_ln76_4_reg_848;
    sc_signal< sc_lv<5> > m_fu_452_p2;
    sc_signal< sc_lv<5> > m_reg_856;
    sc_signal< sc_lv<14> > zext_ln76_3_fu_485_p1;
    sc_signal< sc_lv<14> > zext_ln76_3_reg_861;
    sc_signal< sc_lv<1> > icmp_ln69_fu_447_p2;
    sc_signal< sc_lv<64> > zext_ln85_fu_489_p1;
    sc_signal< sc_lv<64> > zext_ln85_reg_866;
    sc_signal< sc_lv<5> > zext_ln72_fu_493_p1;
    sc_signal< sc_lv<5> > zext_ln72_reg_876;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > c_fu_503_p2;
    sc_signal< sc_lv<2> > c_reg_884;
    sc_signal< sc_lv<13> > zext_ln74_fu_515_p1;
    sc_signal< sc_lv<13> > zext_ln74_reg_889;
    sc_signal< sc_lv<1> > icmp_ln72_fu_497_p2;
    sc_signal< sc_lv<1> > icmp_ln16_fu_519_p2;
    sc_signal< sc_lv<1> > icmp_ln16_reg_894;
    sc_signal< sc_lv<1> > icmp_ln16_1_fu_525_p2;
    sc_signal< sc_lv<1> > icmp_ln16_1_reg_899;
    sc_signal< sc_lv<32> > sum_fu_542_p2;
    sc_signal< sc_lv<2> > r_fu_562_p2;
    sc_signal< sc_lv<2> > r_reg_912;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<9> > tmp31_fu_602_p2;
    sc_signal< sc_lv<9> > tmp31_reg_917;
    sc_signal< sc_lv<1> > icmp_ln73_fu_556_p2;
    sc_signal< sc_lv<1> > or_ln16_fu_657_p2;
    sc_signal< sc_lv<1> > or_ln16_reg_932;
    sc_signal< sc_lv<32> > mac_num_2_fu_662_p3;
    sc_signal< sc_lv<32> > mac_num_2_reg_937;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > w_conv1_load_reg_947;
    sc_signal< sc_lv<1> > w_conv2_load_reg_952;
    sc_signal< sc_lv<32> > one_out_2_fu_704_p3;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > icmp_ln1494_fu_723_p2;
    sc_signal< sc_lv<1> > icmp_ln1494_reg_962;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<6> > n_0_reg_179;
    sc_signal< sc_lv<1> > icmp_ln65_fu_398_p2;
    sc_signal< sc_lv<5> > x_0_reg_190;
    sc_signal< sc_lv<5> > y_0_reg_202;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > p_Val2_s_reg_214;
    sc_signal< sc_lv<5> > m_0_reg_226;
    sc_signal< sc_lv<9> > phi_mul_reg_237;
    sc_signal< sc_lv<9> > phi_mul2_reg_249;
    sc_signal< sc_lv<32> > one_out_0_reg_260;
    sc_signal< sc_lv<32> > mac_num_0_reg_272;
    sc_signal< sc_lv<2> > c_0_reg_284;
    sc_signal< sc_lv<32> > one_out_1_reg_295;
    sc_signal< sc_lv<32> > mac_num_1_reg_307;
    sc_signal< sc_lv<2> > r_0_reg_319;
    sc_signal< sc_lv<64> > sext_ln77_fu_639_p1;
    sc_signal< sc_lv<64> > zext_ln77_fu_673_p1;
    sc_signal< sc_lv<5> > trunc_ln59_fu_330_p1;
    sc_signal< sc_lv<7> > zext_ln64_1_fu_374_p1;
    sc_signal< sc_lv<6> > mul_ln68_fu_389_p0;
    sc_signal< sc_lv<5> > mul_ln68_fu_389_p1;
    sc_signal< sc_lv<9> > tmp29_fu_424_p2;
    sc_signal< sc_lv<6> > zext_ln69_fu_443_p1;
    sc_signal< sc_lv<9> > add_ln76_fu_458_p2;
    sc_signal< sc_lv<12> > shl_ln_fu_467_p3;
    sc_signal< sc_lv<13> > zext_ln76_2_fu_475_p1;
    sc_signal< sc_lv<13> > zext_ln76_1_fu_463_p1;
    sc_signal< sc_lv<13> > add_ln76_1_fu_479_p2;
    sc_signal< sc_lv<5> > add_ln74_fu_509_p2;
    sc_signal< sc_lv<32> > sub_ln83_fu_536_p2;
    sc_signal< sc_lv<32> > shl_ln83_fu_530_p2;
    sc_signal< sc_lv<5> > zext_ln73_1_fu_552_p1;
    sc_signal< sc_lv<5> > add_ln74_1_fu_568_p2;
    sc_signal< sc_lv<1> > icmp_ln16_3_fu_580_p2;
    sc_signal< sc_lv<1> > and_ln16_fu_585_p2;
    sc_signal< sc_lv<1> > icmp_ln16_2_fu_574_p2;
    sc_signal< sc_lv<9> > zext_ln73_fu_548_p1;
    sc_signal< sc_lv<9> > tmp7_fu_596_p2;
    sc_signal< sc_lv<4> > shl_ln76_1_fu_607_p3;
    sc_signal< sc_lv<5> > zext_ln76_4_fu_615_p1;
    sc_signal< sc_lv<5> > sub_ln76_fu_619_p2;
    sc_signal< sc_lv<5> > add_ln76_2_fu_625_p2;
    sc_signal< sc_lv<14> > sext_ln76_fu_630_p1;
    sc_signal< sc_lv<14> > w_index_fu_634_p2;
    sc_signal< sc_lv<1> > and_ln16_1_fu_590_p2;
    sc_signal< sc_lv<1> > xor_ln16_fu_651_p2;
    sc_signal< sc_lv<32> > mac_num_fu_645_p2;
    sc_signal< sc_lv<13> > grp_fu_735_p3;
    sc_signal< sc_lv<1> > select_ln77_fu_677_p3;
    sc_signal< sc_lv<1> > xor_ln78_fu_682_p2;
    sc_signal< sc_lv<1> > xor_ln78_1_fu_688_p2;
    sc_signal< sc_lv<32> > zext_ln78_fu_694_p1;
    sc_signal< sc_lv<32> > one_out_fu_698_p2;
    sc_signal< sc_lv<34> > shl_ln1_fu_711_p3;
    sc_signal< sc_lv<34> > sext_ln1494_fu_719_p1;
    sc_signal< sc_lv<9> > grp_fu_729_p0;
    sc_signal< sc_lv<5> > grp_fu_729_p1;
    sc_signal< sc_lv<5> > grp_fu_729_p2;
    sc_signal< sc_lv<9> > grp_fu_735_p0;
    sc_signal< sc_lv<6> > grp_fu_735_p1;
    sc_signal< sc_lv<5> > grp_fu_735_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< sc_lv<13> > grp_fu_729_p00;
    sc_signal< sc_lv<13> > grp_fu_735_p00;
    sc_signal< sc_lv<9> > mul_ln68_fu_389_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_1E;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_I_cast_fu_366_p1();
    void thread_L_read_read_fu_90_p2();
    void thread_O_cast21_cast_fu_340_p1();
    void thread_O_fu_334_p2();
    void thread_add_ln16_fu_348_p2();
    void thread_add_ln74_1_fu_568_p2();
    void thread_add_ln74_fu_509_p2();
    void thread_add_ln76_1_fu_479_p2();
    void thread_add_ln76_2_fu_625_p2();
    void thread_add_ln76_3_fu_433_p2();
    void thread_add_ln76_4_fu_438_p2();
    void thread_add_ln76_fu_458_p2();
    void thread_and_ln16_1_fu_590_p2();
    void thread_and_ln16_fu_585_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_fu_503_p2();
    void thread_grp_fu_729_p0();
    void thread_grp_fu_729_p00();
    void thread_grp_fu_729_p1();
    void thread_grp_fu_729_p2();
    void thread_grp_fu_735_p0();
    void thread_grp_fu_735_p00();
    void thread_grp_fu_735_p1();
    void thread_grp_fu_735_p2();
    void thread_icmp_ln1494_fu_723_p2();
    void thread_icmp_ln16_1_fu_525_p2();
    void thread_icmp_ln16_2_fu_574_p2();
    void thread_icmp_ln16_3_fu_580_p2();
    void thread_icmp_ln16_fu_519_p2();
    void thread_icmp_ln64_fu_378_p2();
    void thread_icmp_ln65_fu_398_p2();
    void thread_icmp_ln66_fu_413_p2();
    void thread_icmp_ln69_fu_447_p2();
    void thread_icmp_ln72_fu_497_p2();
    void thread_icmp_ln73_fu_556_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_fu_452_p2();
    void thread_mac_num_2_fu_662_p3();
    void thread_mac_num_fu_645_p2();
    void thread_mul_ln68_fu_389_p0();
    void thread_mul_ln68_fu_389_p00();
    void thread_mul_ln68_fu_389_p1();
    void thread_mul_ln68_fu_389_p2();
    void thread_n_fu_383_p2();
    void thread_one_out_2_fu_704_p3();
    void thread_one_out_fu_698_p2();
    void thread_or_ln16_fu_657_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_fu_562_p2();
    void thread_select_ln77_fu_677_p3();
    void thread_sext_ln1494_fu_719_p1();
    void thread_sext_ln76_fu_630_p1();
    void thread_sext_ln77_fu_639_p1();
    void thread_shl_ln1_fu_711_p3();
    void thread_shl_ln76_1_fu_607_p3();
    void thread_shl_ln83_fu_530_p2();
    void thread_shl_ln_fu_467_p3();
    void thread_sub_ln76_fu_619_p2();
    void thread_sub_ln83_fu_536_p2();
    void thread_sum_fu_542_p2();
    void thread_threshold_V_address0();
    void thread_threshold_V_ce0();
    void thread_tmp29_fu_424_p2();
    void thread_tmp31_fu_602_p2();
    void thread_tmp7_fu_596_p2();
    void thread_trunc_ln59_fu_330_p1();
    void thread_trunc_ln69_fu_354_p1();
    void thread_w_conv1_address0();
    void thread_w_conv1_ce0();
    void thread_w_conv2_address0();
    void thread_w_conv2_ce0();
    void thread_w_index_fu_634_p2();
    void thread_x_fu_403_p2();
    void thread_xor_ln16_fu_651_p2();
    void thread_xor_ln78_1_fu_688_p2();
    void thread_xor_ln78_fu_682_p2();
    void thread_y_fu_418_p2();
    void thread_zext_ln64_1_fu_374_p1();
    void thread_zext_ln64_fu_370_p1();
    void thread_zext_ln65_fu_394_p1();
    void thread_zext_ln66_fu_409_p1();
    void thread_zext_ln68_fu_344_p1();
    void thread_zext_ln69_fu_443_p1();
    void thread_zext_ln72_fu_493_p1();
    void thread_zext_ln73_1_fu_552_p1();
    void thread_zext_ln73_fu_548_p1();
    void thread_zext_ln74_fu_515_p1();
    void thread_zext_ln75_fu_358_p1();
    void thread_zext_ln76_1_fu_463_p1();
    void thread_zext_ln76_2_fu_475_p1();
    void thread_zext_ln76_3_fu_485_p1();
    void thread_zext_ln76_4_fu_615_p1();
    void thread_zext_ln76_fu_362_p1();
    void thread_zext_ln77_fu_673_p1();
    void thread_zext_ln78_fu_694_p1();
    void thread_zext_ln85_fu_489_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif