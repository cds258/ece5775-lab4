-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity conv_w_conv1_rom is 
    generic(
             DWIDTH     : integer := 1; 
             AWIDTH     : integer := 13; 
             MEM_SIZE    : integer := 4608
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of conv_w_conv1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1", 1 to 2=> "0", 3 => "1", 4 to 6=> "0", 7 to 8=> "1", 9 to 11=> "0", 12 to 15=> "1", 
    16 to 20=> "0", 21 to 22=> "1", 23 => "0", 24 to 26=> "1", 27 to 29=> "0", 30 => "1", 31 to 32=> "0", 
    33 => "1", 34 to 35=> "0", 36 => "1", 37 => "0", 38 to 41=> "1", 42 => "0", 43 to 44=> "1", 
    45 to 48=> "0", 49 to 55=> "1", 56 => "0", 57 to 59=> "1", 60 => "0", 61 to 62=> "1", 63 => "0", 
    64 to 68=> "1", 69 to 70=> "0", 71 to 75=> "1", 76 to 78=> "0", 79 to 83=> "1", 84 to 95=> "0", 96 => "1", 
    97 => "0", 98 => "1", 99 to 103=> "0", 104 to 107=> "1", 108 to 115=> "0", 116 => "1", 117 => "0", 
    118 to 122=> "1", 123 to 126=> "0", 127 => "1", 128 => "0", 129 to 131=> "1", 132 => "0", 133 to 134=> "1", 
    135 to 136=> "0", 137 to 139=> "1", 140 => "0", 141 to 142=> "1", 143 to 4607=> "0" );


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

entity conv_w_conv1 is
    generic (
        DataWidth : INTEGER := 1;
        AddressRange : INTEGER := 4608;
        AddressWidth : INTEGER := 13);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of conv_w_conv1 is
    component conv_w_conv1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    conv_w_conv1_rom_U :  component conv_w_conv1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


