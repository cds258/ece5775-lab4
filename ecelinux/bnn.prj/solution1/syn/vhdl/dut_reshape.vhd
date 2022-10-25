-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_reshape is
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
    output_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of dut_reshape is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_22 : BOOLEAN;
    signal c_cast2_fu_93_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal c_cast2_reg_188 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_47 : BOOLEAN;
    signal c_1_fu_103_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal c_1_reg_196 : STD_LOGIC_VECTOR (5 downto 0);
    signal y_1_fu_115_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal y_1_reg_204 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_58 : BOOLEAN;
    signal tmp_2_fu_125_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_reg_209 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond1_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_1_fu_143_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal x_1_reg_217 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_73 : BOOLEAN;
    signal o_index_fu_162_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal o_index_reg_222 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond_fu_137_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_reg_59 : STD_LOGIC_VECTOR (5 downto 0);
    signal y_reg_71 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond2_fu_97_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_reg_82 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_105 : BOOLEAN;
    signal tmp_7_fu_179_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_184_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_121_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal x_cast_fu_133_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_fu_149_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_5_fu_154_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_1_fu_167_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_index_fu_171_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




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


    c_reg_59_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((exitcond1_fu_109_p2 = ap_const_lv1_0)))) then 
                c_reg_59 <= c_1_reg_196;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                c_reg_59 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    x_reg_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond1_fu_109_p2 = ap_const_lv1_0))) then 
                x_reg_82 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
                x_reg_82 <= x_1_reg_217;
            end if; 
        end if;
    end process;

    y_reg_71_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond_fu_137_p2)))) then 
                y_reg_71 <= y_1_reg_204;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = exitcond2_fu_97_p2))) then 
                y_reg_71 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                c_1_reg_196 <= c_1_fu_103_p2;
                    c_cast2_reg_188(5 downto 0) <= c_cast2_fu_93_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond_fu_137_p2))) then
                o_index_reg_222 <= o_index_fu_162_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond1_fu_109_p2 = ap_const_lv1_0))) then
                    tmp_2_reg_209(3 downto 2) <= tmp_2_fu_125_p3(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                x_1_reg_217 <= x_1_fu_143_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                y_1_reg_204 <= y_1_fu_115_p2;
            end if;
        end if;
    end process;
    c_cast2_reg_188(8 downto 6) <= "000";
    tmp_2_reg_209(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond1_fu_109_p2, exitcond_fu_137_p2, exitcond2_fu_97_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_lv1_0 = exitcond2_fu_97_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((exitcond1_fu_109_p2 = ap_const_lv1_0)) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st4_fsm_3 => 
                if ((ap_const_lv1_0 = exitcond_fu_137_p2)) then
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st2_fsm_1, exitcond2_fu_97_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond2_fu_97_p2))))) then 
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


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond2_fu_97_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond2_fu_97_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_105_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_105 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_22_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_22 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_47_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_47 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_58_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_58 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_73_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_73 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_22)
    begin
        if (ap_sig_22) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_47)
    begin
        if (ap_sig_47) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_58)
    begin
        if (ap_sig_58) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_73)
    begin
        if (ap_sig_73) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_105)
    begin
        if (ap_sig_105) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;

    c_1_fu_103_p2 <= std_logic_vector(unsigned(c_reg_59) + unsigned(ap_const_lv6_1));
    c_cast2_fu_93_p1 <= std_logic_vector(resize(unsigned(c_reg_59),9));
    exitcond1_fu_109_p2 <= "1" when (y_reg_71 = ap_const_lv3_4) else "0";
    exitcond2_fu_97_p2 <= "1" when (c_reg_59 = ap_const_lv6_20) else "0";
    exitcond_fu_137_p2 <= "1" when (x_reg_82 = ap_const_lv3_4) else "0";
    i_index_fu_171_p3 <= (tmp_1_fu_167_p1 & tmp_4_fu_149_p2);
    input_r_address0 <= tmp_7_fu_179_p1(13 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    o_index_fu_162_p2 <= std_logic_vector(unsigned(tmp_5_fu_154_p3) + unsigned(c_cast2_reg_188));
    output_r_address0 <= tmp_8_fu_184_p1(13 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= input_r_q0;

    output_r_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_167_p1 <= c_reg_59(5 - 1 downto 0);
    tmp_2_fu_125_p3 <= (tmp_fu_121_p1 & ap_const_lv2_0);
    tmp_4_fu_149_p2 <= std_logic_vector(unsigned(x_cast_fu_133_p1) + unsigned(tmp_2_reg_209));
    tmp_5_fu_154_p3 <= (tmp_4_fu_149_p2 & ap_const_lv5_0);
    tmp_7_fu_179_p1 <= std_logic_vector(resize(unsigned(i_index_fu_171_p3),64));
    tmp_8_fu_184_p1 <= std_logic_vector(resize(unsigned(o_index_reg_222),64));
    tmp_fu_121_p1 <= y_reg_71(2 - 1 downto 0);
    x_1_fu_143_p2 <= std_logic_vector(unsigned(x_reg_82) + unsigned(ap_const_lv3_1));
    x_cast_fu_133_p1 <= std_logic_vector(resize(unsigned(x_reg_82),4));
    y_1_fu_115_p2 <= std_logic_vector(unsigned(y_reg_71) + unsigned(ap_const_lv3_1));
end behav;
