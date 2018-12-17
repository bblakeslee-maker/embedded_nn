----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2018 03:14:41 PM
-- Design Name: 
-- Module Name: fall_edge_det - Behavioral
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

entity fall_edge_det is
    port(
        inputSig  : in std_logic;
        fastClk   : in std_logic;
        reset     : in std_logic;
        outputSig : out std_logic
    );
end fall_edge_det;

architecture Behavioral of fall_edge_det is
signal q : std_logic;
begin

    -- Clocking process
    process(reset, fastClk)
    begin
        if reset = '1' then
            q <= '0';
        elsif fastClk'event and fastClk = '1' then
            q <= inputSig;
        end if;
    end process;

    outputSig <= q and not inputSig;

end Behavioral;
