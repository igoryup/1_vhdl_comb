----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2020 20:31:34
-- Design Name: 
-- Module Name: h1_comb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity h1_comb is
  Port (
    A1 : in std_logic;
    A2 : in std_logic;
    Y : out std_logic_vector(14 downto 0)
  );
end h1_comb;

architecture Behavioral of h1_comb is
    signal sig : std_logic_vector(14 downto 0);
begin
    --    
    sig(0) <= A1 and A2;
    sig(2) <= sig(0);
    sig(12) <= sig(0);
    sig(14) <= sig(0);
    --
    sig(13) <= A1 or A2;
    sig(1) <= sig(13);    
    --
    sig(3) <= A2;
    --
    sig(4) <= not(A1 and A2);
    sig(10) <= sig(4);
    --
    sig(5) <= A2 and not(A1);
    --
    sig(6) <= not(A1 xor A2);
    sig(8) <= sig(6);
    --
    sig(7) <= '1'; 
    --
    sig(9) <= A1;
    --
    sig(11) <= A1 and not(A2);
    --
    Y <= sig;
end Behavioral;
