----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2018 04:46:27 PM
-- Design Name: 
-- Module Name: sig_stretcher - Behavioral
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

entity sig_stretcher is
    port(
        fast_clk : in  std_logic;
        slow_clk : in  std_logic;
        sig      : in  std_logic;
        output   : out std_logic
    );
end sig_stretcher;

architecture Behavioral of sig_stretcher is
    signal en_level  : std_logic := '0';
    signal en_strobe : std_logic_vector(2 downto 0) := B"000";
begin
    process(fast_clk)
    begin
        if fast_clk'event and fast_clk = '1' then 
            case sig is
                when '0'    => en_level <= en_level;
                when '1'    => en_level <= not en_level;
                when others => null;
            end case;
        end if;
    end process;
    
    process(slow_clk)
    begin
        if slow_clk'event and slow_clk = '1' then
            en_strobe <= en_strobe(1 downto 0) & en_level;
        end if;
    end process;
    
    output <= en_strobe(2) xor en_strobe(1);

end Behavioral;
