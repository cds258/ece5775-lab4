-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reshape is
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


architecture behav of reshape is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln130_fu_97_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln130_reg_203 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal c_fu_107_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal c_reg_211 : STD_LOGIC_VECTOR (5 downto 0);
    signal y_fu_119_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal y_reg_219 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal shl_ln_fu_129_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln_reg_224 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln131_fu_113_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln133_fu_137_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln133_reg_229 : STD_LOGIC_VECTOR (8 downto 0);
    signal x_fu_147_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal x_reg_237 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal o_index_fu_170_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal o_index_reg_242 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln132_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_0_reg_63 : STD_LOGIC_VECTOR (5 downto 0);
    signal y_0_reg_75 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln130_fu_101_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_0_reg_86 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal zext_ln135_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln135_1_fu_199_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln133_fu_125_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln133_1_fu_153_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln133_fu_157_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln133_1_fu_162_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln134_fu_175_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_179_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_index_fu_189_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    c_0_reg_63_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln131_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                c_0_reg_63 <= c_reg_211;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                c_0_reg_63 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    x_0_reg_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln131_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                x_0_reg_86 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                x_0_reg_86 <= x_reg_237;
            end if; 
        end if;
    end process;

    y_0_reg_75_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln130_fu_101_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                y_0_reg_75 <= ap_const_lv3_0;
            elsif (((icmp_ln132_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                y_0_reg_75 <= y_reg_219;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                c_reg_211 <= c_fu_107_p2;
                    zext_ln130_reg_203(5 downto 0) <= zext_ln130_fu_97_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln132_fu_141_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                o_index_reg_242 <= o_index_fu_170_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln131_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    shl_ln_reg_224(3 downto 2) <= shl_ln_fu_129_p3(3 downto 2);
                    zext_ln133_reg_229(3 downto 2) <= zext_ln133_fu_137_p1(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                x_reg_237 <= x_fu_147_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                y_reg_219 <= y_fu_119_p2;
            end if;
        end if;
    end process;
    zext_ln130_reg_203(8 downto 6) <= "000";
    shl_ln_reg_224(1 downto 0) <= "00";
    zext_ln133_reg_229(1 downto 0) <= "00";
    zext_ln133_reg_229(8 downto 4) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln131_fu_113_p2, ap_CS_fsm_state4, icmp_ln132_fu_141_p2, icmp_ln130_fu_101_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln130_fu_101_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln131_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln132_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln133_fu_157_p2 <= std_logic_vector(unsigned(zext_ln133_1_fu_153_p1) + unsigned(shl_ln_reg_224));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln130_fu_101_p2)
    begin
        if ((((icmp_ln130_fu_101_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln130_fu_101_p2)
    begin
        if (((icmp_ln130_fu_101_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_fu_107_p2 <= std_logic_vector(unsigned(c_0_reg_63) + unsigned(ap_const_lv6_1));
    i_index_fu_189_p2 <= std_logic_vector(unsigned(zext_ln133_reg_229) + unsigned(tmp_fu_179_p4));
    icmp_ln130_fu_101_p2 <= "1" when (c_0_reg_63 = ap_const_lv6_20) else "0";
    icmp_ln131_fu_113_p2 <= "1" when (y_0_reg_75 = ap_const_lv3_4) else "0";
    icmp_ln132_fu_141_p2 <= "1" when (x_0_reg_86 = ap_const_lv3_4) else "0";
    input_r_address0 <= zext_ln135_fu_194_p1(13 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    o_index_fu_170_p2 <= std_logic_vector(unsigned(zext_ln130_reg_203) + unsigned(shl_ln133_1_fu_162_p3));
    output_r_address0 <= zext_ln135_1_fu_199_p1(13 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= input_r_q0;

    output_r_we0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln133_1_fu_162_p3 <= (add_ln133_fu_157_p2 & ap_const_lv5_0);
    shl_ln_fu_129_p3 <= (trunc_ln133_fu_125_p1 & ap_const_lv2_0);
    tmp_fu_179_p4 <= ((trunc_ln134_fu_175_p1 & ap_const_lv1_0) & x_0_reg_86);
    trunc_ln133_fu_125_p1 <= y_0_reg_75(2 - 1 downto 0);
    trunc_ln134_fu_175_p1 <= c_0_reg_63(5 - 1 downto 0);
    x_fu_147_p2 <= std_logic_vector(unsigned(x_0_reg_86) + unsigned(ap_const_lv3_1));
    y_fu_119_p2 <= std_logic_vector(unsigned(y_0_reg_75) + unsigned(ap_const_lv3_1));
    zext_ln130_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_0_reg_63),9));
    zext_ln133_1_fu_153_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_0_reg_86),4));
    zext_ln133_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_129_p3),9));
    zext_ln135_1_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(o_index_reg_242),64));
    zext_ln135_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_index_fu_189_p2),64));
end behav;
