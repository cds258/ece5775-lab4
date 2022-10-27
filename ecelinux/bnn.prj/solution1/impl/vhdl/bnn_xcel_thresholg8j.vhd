-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity bnn_xcel_thresholg8j_rom is 
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


architecture rtl of bnn_xcel_thresholg8j_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 255=> "00000110", 256 to 767=> "11111110", 768 to 1023=> "00010100", 1024 to 1279=> "11110100", 
    1280 to 1535=> "11111100", 1536 to 1791=> "11111001", 1792 to 2047=> "11110011", 2048 to 2303=> "11111100", 
    2304 to 2559=> "00001000", 2560 to 2815=> "00001110", 2816 to 3071=> "00000100", 3072 to 3327=> "00010010", 
    3328 to 3583=> "11111111", 3584 to 3839=> "11110110", 3840 to 4095=> "11111011", 4096 to 5183=> "00000000" );

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

entity bnn_xcel_thresholg8j is
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

architecture arch of bnn_xcel_thresholg8j is
    component bnn_xcel_thresholg8j_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    bnn_xcel_thresholg8j_rom_U :  component bnn_xcel_thresholg8j_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


