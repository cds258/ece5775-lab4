// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _max_pool_HH_
#define _max_pool_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_mac_muladd_8neOg.h"
#include "dut_mac_muladd_6nfYi.h"

namespace ap_rtl {

struct max_pool : public sc_module {
    // Port declarations 15
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
    sc_in< sc_lv<7> > M;
    sc_in< sc_lv<6> > I;


    // Module declarations
    max_pool(sc_module_name name);
    SC_HAS_PROCESS(max_pool);

    ~max_pool();

    sc_trace_file* mVcdFile;

    dut_mac_muladd_8neOg<1,1,8,4,4,11>* dut_mac_muladd_8neOg_U21;
    dut_mac_muladd_6nfYi<1,1,6,9,4,13>* dut_mac_muladd_6nfYi_U22;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > O_fu_208_p4;
    sc_signal< sc_lv<4> > O_reg_426;
    sc_signal< sc_lv<11> > zext_ln109_fu_218_p1;
    sc_signal< sc_lv<11> > zext_ln109_reg_432;
    sc_signal< sc_lv<8> > zext_ln113_fu_222_p1;
    sc_signal< sc_lv<8> > zext_ln113_reg_437;
    sc_signal< sc_lv<13> > i_fu_232_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<9> > zext_ln113_1_fu_243_p1;
    sc_signal< sc_lv<9> > zext_ln113_1_reg_450;
    sc_signal< sc_lv<1> > icmp_ln104_fu_226_p2;
    sc_signal< sc_lv<13> > I_cast_fu_246_p1;
    sc_signal< sc_lv<13> > I_cast_reg_455;
    sc_signal< sc_lv<9> > add_ln113_1_fu_249_p2;
    sc_signal< sc_lv<9> > add_ln113_1_reg_460;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > m_fu_267_p2;
    sc_signal< sc_lv<6> > m_reg_468;
    sc_signal< sc_lv<8> > mul_ln113_fu_273_p2;
    sc_signal< sc_lv<8> > mul_ln113_reg_473;
    sc_signal< sc_lv<1> > icmp_ln106_fu_262_p2;
    sc_signal< sc_lv<11> > zext_ln107_fu_278_p1;
    sc_signal< sc_lv<11> > zext_ln107_reg_478;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > x_fu_287_p2;
    sc_signal< sc_lv<4> > x_reg_486;
    sc_signal< sc_lv<13> > zext_ln113_3_fu_299_p1;
    sc_signal< sc_lv<13> > zext_ln113_3_reg_491;
    sc_signal< sc_lv<1> > icmp_ln107_fu_282_p2;
    sc_signal< sc_lv<4> > y_fu_312_p2;
    sc_signal< sc_lv<4> > y_reg_499;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<11> > grp_fu_402_p3;
    sc_signal< sc_lv<11> > o_index_reg_504;
    sc_signal< sc_lv<1> > icmp_ln108_fu_307_p2;
    sc_signal< sc_lv<9> > zext_ln113_4_fu_333_p1;
    sc_signal< sc_lv<9> > zext_ln113_4_reg_509;
    sc_signal< sc_lv<13> > zext_ln111_fu_337_p1;
    sc_signal< sc_lv<13> > zext_ln111_reg_514;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > c_fu_347_p2;
    sc_signal< sc_lv<2> > c_reg_522;
    sc_signal< sc_lv<2> > r_fu_367_p2;
    sc_signal< sc_lv<2> > r_reg_530;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<9> > tmp5_fu_379_p2;
    sc_signal< sc_lv<9> > tmp5_reg_535;
    sc_signal< sc_lv<1> > icmp_ln112_fu_361_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > or_ln114_fu_396_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<13> > i_0_reg_105;
    sc_signal< sc_lv<6> > m_0_reg_116;
    sc_signal< sc_lv<9> > phi_mul_reg_127;
    sc_signal< sc_lv<4> > x_0_reg_139;
    sc_signal< sc_lv<4> > y_0_reg_150;
    sc_signal< sc_lv<1> > icmp_ln111_fu_341_p2;
    sc_signal< sc_lv<1> > max_0_reg_161;
    sc_signal< sc_lv<2> > c_0_reg_174;
    sc_signal< sc_lv<1> > max_1_reg_185;
    sc_signal< sc_lv<2> > r_0_reg_197;
    sc_signal< sc_lv<64> > zext_ln104_fu_238_p1;
    sc_signal< sc_lv<64> > zext_ln117_fu_353_p1;
    sc_signal< sc_lv<64> > zext_ln114_fu_391_p1;
    sc_signal< sc_lv<7> > zext_ln106_fu_258_p1;
    sc_signal< sc_lv<4> > mul_ln113_fu_273_p0;
    sc_signal< sc_lv<6> > mul_ln113_fu_273_p1;
    sc_signal< sc_lv<4> > shl_ln113_fu_293_p2;
    sc_signal< sc_lv<8> > zext_ln108_fu_303_p1;
    sc_signal< sc_lv<8> > tmp_fu_318_p2;
    sc_signal< sc_lv<4> > shl_ln113_1_fu_327_p2;
    sc_signal< sc_lv<9> > zext_ln112_fu_357_p1;
    sc_signal< sc_lv<9> > tmp1_fu_373_p2;
    sc_signal< sc_lv<13> > grp_fu_408_p3;
    sc_signal< sc_lv<13> > i_index_fu_387_p2;
    sc_signal< sc_lv<8> > grp_fu_402_p0;
    sc_signal< sc_lv<4> > grp_fu_402_p1;
    sc_signal< sc_lv<4> > grp_fu_402_p2;
    sc_signal< sc_lv<6> > grp_fu_408_p0;
    sc_signal< sc_lv<9> > grp_fu_408_p1;
    sc_signal< sc_lv<4> > grp_fu_408_p2;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_lv<11> > grp_fu_402_p00;
    sc_signal< sc_lv<13> > grp_fu_408_p10;
    sc_signal< sc_lv<8> > mul_ln113_fu_273_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
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
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<13> ap_const_lv13_1440;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_I_cast_fu_246_p1();
    void thread_O_fu_208_p4();
    void thread_add_ln113_1_fu_249_p2();
    void thread_ap_CS_fsm_state1();
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
    void thread_c_fu_347_p2();
    void thread_grp_fu_402_p0();
    void thread_grp_fu_402_p00();
    void thread_grp_fu_402_p1();
    void thread_grp_fu_402_p2();
    void thread_grp_fu_408_p0();
    void thread_grp_fu_408_p1();
    void thread_grp_fu_408_p10();
    void thread_grp_fu_408_p2();
    void thread_i_fu_232_p2();
    void thread_i_index_fu_387_p2();
    void thread_icmp_ln104_fu_226_p2();
    void thread_icmp_ln106_fu_262_p2();
    void thread_icmp_ln107_fu_282_p2();
    void thread_icmp_ln108_fu_307_p2();
    void thread_icmp_ln111_fu_341_p2();
    void thread_icmp_ln112_fu_361_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_fu_267_p2();
    void thread_mul_ln113_fu_273_p0();
    void thread_mul_ln113_fu_273_p1();
    void thread_mul_ln113_fu_273_p10();
    void thread_mul_ln113_fu_273_p2();
    void thread_or_ln114_fu_396_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_fu_367_p2();
    void thread_shl_ln113_1_fu_327_p2();
    void thread_shl_ln113_fu_293_p2();
    void thread_tmp1_fu_373_p2();
    void thread_tmp5_fu_379_p2();
    void thread_tmp_fu_318_p2();
    void thread_x_fu_287_p2();
    void thread_y_fu_312_p2();
    void thread_zext_ln104_fu_238_p1();
    void thread_zext_ln106_fu_258_p1();
    void thread_zext_ln107_fu_278_p1();
    void thread_zext_ln108_fu_303_p1();
    void thread_zext_ln109_fu_218_p1();
    void thread_zext_ln111_fu_337_p1();
    void thread_zext_ln112_fu_357_p1();
    void thread_zext_ln113_1_fu_243_p1();
    void thread_zext_ln113_3_fu_299_p1();
    void thread_zext_ln113_4_fu_333_p1();
    void thread_zext_ln113_fu_222_p1();
    void thread_zext_ln114_fu_391_p1();
    void thread_zext_ln117_fu_353_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif