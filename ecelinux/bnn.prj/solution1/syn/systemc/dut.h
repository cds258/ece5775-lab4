// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_HH_
#define _dut_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_bnn_xcel.h"
#include "dut_bnn_xcel_mem_conv1.h"

namespace ap_rtl {

struct dut : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > strm_in_V_V_dout;
    sc_in< sc_logic > strm_in_V_V_empty_n;
    sc_out< sc_logic > strm_in_V_V_read;
    sc_out< sc_lv<32> > strm_out_V_V_din;
    sc_in< sc_logic > strm_out_V_V_full_n;
    sc_out< sc_logic > strm_out_V_V_write;


    // Module declarations
    dut(sc_module_name name);
    SC_HAS_PROCESS(dut);

    ~dut();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dut_bnn_xcel_mem_conv1* input_U;
    dut_bnn_xcel* grp_dut_bnn_xcel_fu_136;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_19;
    sc_signal< sc_logic > strm_in_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_40;
    sc_signal< sc_lv<1> > exitcond1_fu_158_p2;
    sc_signal< sc_logic > strm_out_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_52;
    sc_signal< sc_lv<4> > i_3_fu_164_p2;
    sc_signal< sc_lv<4> > i_3_reg_223;
    sc_signal< bool > ap_sig_58;
    sc_signal< sc_lv<32> > tmp_V_2_reg_228;
    sc_signal< sc_lv<8> > tmp_s_fu_174_p3;
    sc_signal< sc_lv<8> > tmp_s_reg_233;
    sc_signal< sc_lv<6> > j_fu_196_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_73;
    sc_signal< sc_lv<13> > input_address0;
    sc_signal< sc_logic > input_ce0;
    sc_signal< sc_logic > input_we0;
    sc_signal< sc_lv<1> > input_d0;
    sc_signal< sc_lv<1> > input_q0;
    sc_signal< sc_logic > grp_dut_bnn_xcel_fu_136_ap_start;
    sc_signal< sc_logic > grp_dut_bnn_xcel_fu_136_ap_done;
    sc_signal< sc_logic > grp_dut_bnn_xcel_fu_136_ap_idle;
    sc_signal< sc_logic > grp_dut_bnn_xcel_fu_136_ap_ready;
    sc_signal< sc_lv<13> > grp_dut_bnn_xcel_fu_136_input_r_address0;
    sc_signal< sc_logic > grp_dut_bnn_xcel_fu_136_input_r_ce0;
    sc_signal< sc_lv<32> > grp_dut_bnn_xcel_fu_136_ap_return;
    sc_signal< sc_lv<4> > i_reg_114;
    sc_signal< sc_lv<1> > exitcond_fu_190_p2;
    sc_signal< sc_lv<6> > Hi_assign_reg_125;
    sc_signal< sc_logic > ap_reg_grp_dut_bnn_xcel_fu_136_ap_start;
    sc_signal< sc_lv<64> > tmp_4_fu_215_p1;
    sc_signal< sc_lv<3> > tmp_fu_170_p1;
    sc_signal< sc_lv<32> > Hi_assign_cast1_fu_186_p1;
    sc_signal< sc_lv<8> > Hi_assign_cast2_fu_182_p1;
    sc_signal< sc_lv<8> > tmp_3_fu_210_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_st3_fsm_2;
    static const sc_lv<4> ap_ST_st4_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_cast1_fu_186_p1();
    void thread_Hi_assign_cast2_fu_182_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_19();
    void thread_ap_sig_40();
    void thread_ap_sig_52();
    void thread_ap_sig_58();
    void thread_ap_sig_73();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_exitcond1_fu_158_p2();
    void thread_exitcond_fu_190_p2();
    void thread_grp_dut_bnn_xcel_fu_136_ap_start();
    void thread_i_3_fu_164_p2();
    void thread_input_address0();
    void thread_input_ce0();
    void thread_input_d0();
    void thread_input_we0();
    void thread_j_fu_196_p2();
    void thread_strm_in_V_V_blk_n();
    void thread_strm_in_V_V_read();
    void thread_strm_out_V_V_blk_n();
    void thread_strm_out_V_V_din();
    void thread_strm_out_V_V_write();
    void thread_tmp_3_fu_210_p2();
    void thread_tmp_4_fu_215_p1();
    void thread_tmp_fu_170_p1();
    void thread_tmp_s_fu_174_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
