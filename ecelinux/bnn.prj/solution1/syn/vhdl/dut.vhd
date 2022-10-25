-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    strm_in_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    strm_in_V_V_empty_n : IN STD_LOGIC;
    strm_in_V_V_read : OUT STD_LOGIC;
    strm_out_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    strm_out_V_V_full_n : IN STD_LOGIC;
    strm_out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of dut is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dut,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.340000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=23,HLS_SYN_DSP=19,HLS_SYN_FF=3013,HLS_SYN_LUT=4860}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_19 : BOOLEAN;
    signal strm_in_V_V_blk_n : STD_LOGIC;
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_40 : BOOLEAN;
    signal exitcond1_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal strm_out_V_V_blk_n : STD_LOGIC;
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_52 : BOOLEAN;
    signal i_3_fu_164_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_3_reg_223 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_58 : BOOLEAN;
    signal tmp_V_2_reg_228 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_174_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_reg_233 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_fu_196_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_73 : BOOLEAN;
    signal input_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal input_ce0 : STD_LOGIC;
    signal input_we0 : STD_LOGIC;
    signal input_d0 : STD_LOGIC_VECTOR (0 downto 0);
    signal input_q0 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dut_bnn_xcel_fu_136_ap_start : STD_LOGIC;
    signal grp_dut_bnn_xcel_fu_136_ap_done : STD_LOGIC;
    signal grp_dut_bnn_xcel_fu_136_ap_idle : STD_LOGIC;
    signal grp_dut_bnn_xcel_fu_136_ap_ready : STD_LOGIC;
    signal grp_dut_bnn_xcel_fu_136_input_r_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_dut_bnn_xcel_fu_136_input_r_ce0 : STD_LOGIC;
    signal grp_dut_bnn_xcel_fu_136_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_114 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Hi_assign_reg_125 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_reg_grp_dut_bnn_xcel_fu_136_ap_start : STD_LOGIC := '0';
    signal tmp_4_fu_215_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_170_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal Hi_assign_cast1_fu_186_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal Hi_assign_cast2_fu_182_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_fu_210_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component dut_bnn_xcel IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        input_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        input_r_ce0 : OUT STD_LOGIC;
        input_r_q0 : IN STD_LOGIC_VECTOR (0 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component dut_bnn_xcel_mem_conv1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (12 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (0 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    input_U : component dut_bnn_xcel_mem_conv1
    generic map (
        DataWidth => 1,
        AddressRange => 5184,
        AddressWidth => 13)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => input_address0,
        ce0 => input_ce0,
        we0 => input_we0,
        d0 => input_d0,
        q0 => input_q0);

    grp_dut_bnn_xcel_fu_136 : component dut_bnn_xcel
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dut_bnn_xcel_fu_136_ap_start,
        ap_done => grp_dut_bnn_xcel_fu_136_ap_done,
        ap_idle => grp_dut_bnn_xcel_fu_136_ap_idle,
        ap_ready => grp_dut_bnn_xcel_fu_136_ap_ready,
        input_r_address0 => grp_dut_bnn_xcel_fu_136_input_r_address0,
        input_r_ce0 => grp_dut_bnn_xcel_fu_136_input_r_ce0,
        input_r_q0 => input_q0,
        ap_return => grp_dut_bnn_xcel_fu_136_ap_return);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_grp_dut_bnn_xcel_fu_136_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_dut_bnn_xcel_fu_136_ap_start <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not(ap_sig_58) and not((exitcond1_fu_158_p2 = ap_const_lv1_0)))) then 
                    ap_reg_grp_dut_bnn_xcel_fu_136_ap_start <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_dut_bnn_xcel_fu_136_ap_ready)) then 
                    ap_reg_grp_dut_bnn_xcel_fu_136_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    Hi_assign_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond_fu_190_p2))) then 
                Hi_assign_reg_125 <= j_fu_196_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_158_p2 = ap_const_lv1_0) and not(ap_sig_58))) then 
                Hi_assign_reg_125 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    i_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond_fu_190_p2)))) then 
                i_reg_114 <= i_3_reg_223;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_114 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not(ap_sig_58))) then
                i_3_reg_223 <= i_3_fu_164_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_158_p2 = ap_const_lv1_0) and not(ap_sig_58))) then
                tmp_V_2_reg_228 <= strm_in_V_V_dout;
                    tmp_s_reg_233(7 downto 5) <= tmp_s_fu_174_p3(7 downto 5);
            end if;
        end if;
    end process;
    tmp_s_reg_233(4 downto 0) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, strm_out_V_V_full_n, exitcond1_fu_158_p2, ap_sig_58, grp_dut_bnn_xcel_fu_136_ap_done, exitcond_fu_190_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (((exitcond1_fu_158_p2 = ap_const_lv1_0) and not(ap_sig_58))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                elsif ((not(ap_sig_58) and not((exitcond1_fu_158_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((ap_const_lv1_0 = exitcond_fu_190_p2)) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st4_fsm_3 => 
                if (not(((strm_out_V_V_full_n = ap_const_logic_0) or (ap_const_logic_0 = grp_dut_bnn_xcel_fu_136_ap_done)))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    Hi_assign_cast1_fu_186_p1 <= std_logic_vector(resize(unsigned(Hi_assign_reg_125),32));
    Hi_assign_cast2_fu_182_p1 <= std_logic_vector(resize(unsigned(Hi_assign_reg_125),8));

    ap_done_assign_proc : process(strm_out_V_V_full_n, ap_sig_cseq_ST_st4_fsm_3, grp_dut_bnn_xcel_fu_136_ap_done)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not(((strm_out_V_V_full_n = ap_const_logic_0) or (ap_const_logic_0 = grp_dut_bnn_xcel_fu_136_ap_done))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(strm_out_V_V_full_n, ap_sig_cseq_ST_st4_fsm_3, grp_dut_bnn_xcel_fu_136_ap_done)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not(((strm_out_V_V_full_n = ap_const_logic_0) or (ap_const_logic_0 = grp_dut_bnn_xcel_fu_136_ap_done))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_19_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_19 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_40_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_40 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_52_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_52 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_58_assign_proc : process(strm_in_V_V_empty_n, exitcond1_fu_158_p2)
    begin
                ap_sig_58 <= ((exitcond1_fu_158_p2 = ap_const_lv1_0) and (strm_in_V_V_empty_n = ap_const_logic_0));
    end process;


    ap_sig_73_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_73 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_19)
    begin
        if (ap_sig_19) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_40)
    begin
        if (ap_sig_40) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_73)
    begin
        if (ap_sig_73) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_52)
    begin
        if (ap_sig_52) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_158_p2 <= "1" when (i_reg_114 = ap_const_lv4_8) else "0";
    exitcond_fu_190_p2 <= "1" when (Hi_assign_reg_125 = ap_const_lv6_20) else "0";
    grp_dut_bnn_xcel_fu_136_ap_start <= ap_reg_grp_dut_bnn_xcel_fu_136_ap_start;
    i_3_fu_164_p2 <= std_logic_vector(unsigned(i_reg_114) + unsigned(ap_const_lv4_1));

    input_address0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, ap_sig_cseq_ST_st3_fsm_2, grp_dut_bnn_xcel_fu_136_input_r_address0, tmp_4_fu_215_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            input_address0 <= tmp_4_fu_215_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            input_address0 <= grp_dut_bnn_xcel_fu_136_input_r_address0;
        else 
            input_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    input_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, ap_sig_cseq_ST_st3_fsm_2, grp_dut_bnn_xcel_fu_136_input_r_ce0)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            input_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            input_ce0 <= grp_dut_bnn_xcel_fu_136_input_r_ce0;
        else 
            input_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    input_d0 <= tmp_V_2_reg_228(to_integer(unsigned(Hi_assign_cast1_fu_186_p1)) downto to_integer(unsigned(Hi_assign_cast1_fu_186_p1))) when (to_integer(unsigned(Hi_assign_cast1_fu_186_p1))>= 0 and to_integer(unsigned(Hi_assign_cast1_fu_186_p1))<=31) else "-";

    input_we0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, exitcond_fu_190_p2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond_fu_190_p2)))) then 
            input_we0 <= ap_const_logic_1;
        else 
            input_we0 <= ap_const_logic_0;
        end if; 
    end process;

    j_fu_196_p2 <= std_logic_vector(unsigned(Hi_assign_reg_125) + unsigned(ap_const_lv6_1));

    strm_in_V_V_blk_n_assign_proc : process(strm_in_V_V_empty_n, ap_sig_cseq_ST_st2_fsm_1, exitcond1_fu_158_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_158_p2 = ap_const_lv1_0))) then 
            strm_in_V_V_blk_n <= strm_in_V_V_empty_n;
        else 
            strm_in_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    strm_in_V_V_read_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond1_fu_158_p2, ap_sig_58)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_158_p2 = ap_const_lv1_0) and not(ap_sig_58))) then 
            strm_in_V_V_read <= ap_const_logic_1;
        else 
            strm_in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    strm_out_V_V_blk_n_assign_proc : process(strm_out_V_V_full_n, ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            strm_out_V_V_blk_n <= strm_out_V_V_full_n;
        else 
            strm_out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    strm_out_V_V_din <= grp_dut_bnn_xcel_fu_136_ap_return;

    strm_out_V_V_write_assign_proc : process(strm_out_V_V_full_n, ap_sig_cseq_ST_st4_fsm_3, grp_dut_bnn_xcel_fu_136_ap_done)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not(((strm_out_V_V_full_n = ap_const_logic_0) or (ap_const_logic_0 = grp_dut_bnn_xcel_fu_136_ap_done))))) then 
            strm_out_V_V_write <= ap_const_logic_1;
        else 
            strm_out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_3_fu_210_p2 <= std_logic_vector(unsigned(Hi_assign_cast2_fu_182_p1) + unsigned(tmp_s_reg_233));
    tmp_4_fu_215_p1 <= std_logic_vector(resize(unsigned(tmp_3_fu_210_p2),64));
    tmp_fu_170_p1 <= i_reg_114(3 - 1 downto 0);
    tmp_s_fu_174_p3 <= (tmp_fu_170_p1 & ap_const_lv5_0);
end behav;