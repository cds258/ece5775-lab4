-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity bnn_xcel_thresholhbi_rom is 
    generic(
             DWIDTH     : integer := 8; 
             AWIDTH     : integer := 13; 
             MEM_SIZE    : integer := 5184
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of bnn_xcel_thresholhbi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 63=> "00000100", 64 to 127=> "11101110", 128 to 191=> "00000100", 192 to 255=> "00000010", 
    256 to 319=> "00010100", 320 to 383=> "00001011", 384 to 447=> "00010101", 448 to 511=> "11111000", 
    512 to 575=> "00000111", 576 to 639=> "00010100", 640 to 703=> "00100010", 704 to 767=> "00011111", 
    768 to 831=> "00001110", 832 to 895=> "00010100", 896 to 959=> "11111110", 960 to 1023=> "00010100", 
    1024 to 1087=> "00000101", 1088 to 1151=> "00011000", 1152 to 1215=> "00100101", 1216 to 1279=> "00101001", 
    1280 to 1343=> "11111110", 1344 to 1407=> "00000100", 1408 to 1471=> "00001000", 1472 to 1535=> "00101010", 
    1536 to 1599=> "00100010", 1600 to 1663=> "00001111", 1664 to 1727=> "11100011", 1728 to 1791=> "00011010", 
    1792 to 1855=> "11111110", 1856 to 1919=> "00010101", 1920 to 1983=> "00001010", 1984 to 2047=> "00001101", 
    2048 to 5183=> "00000000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity bnn_xcel_thresholhbi is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 5184;
        AddressWidth : INTEGER := 13);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of bnn_xcel_thresholhbi is
    component bnn_xcel_thresholhbi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    bnn_xcel_thresholhbi_rom_U :  component bnn_xcel_thresholhbi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


