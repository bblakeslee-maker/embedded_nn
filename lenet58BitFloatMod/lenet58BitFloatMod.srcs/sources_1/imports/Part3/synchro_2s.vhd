----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2018 04:27:55 PM
-- Design Name: 
-- Module Name: synchro_2s - Behavioral
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

entity synchro_2s is
port(
    inputSig  : in std_logic;
    fastClk   : in std_logic;
    reset     : in std_logic;
    outputSig : out std_logic
);
end synchro_2s;

architecture Behavioral of synchro_2s is
signal q : std_logic_vector(1 downto 0);
begin
    
    -- Clocking process
    process(reset, fastClk)
    begin
        if reset = '1' then
            q <= "00";
        elsif fastClk'event and fastClk = '1' then
            q <= (q(0) & inputSig);
        end if;
    end process;
    
    outputSig <= q(1);

end Behavioral;
