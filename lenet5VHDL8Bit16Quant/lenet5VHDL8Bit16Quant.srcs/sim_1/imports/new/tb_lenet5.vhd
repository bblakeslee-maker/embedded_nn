----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2018 01:26:15 PM
-- Design Name: 
-- Module Name: tb_lenet5 - Behavioral
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

entity tb_lenet5 is
--  Port ( );
end tb_lenet5;

architecture Behavioral of tb_lenet5 is
    COMPONENT lenet5top
        port(
            -- Clock and reset
            rst   : in std_logic;
            clk   : in std_logic;
            -- Control lines
            start : in std_logic;
            idle  : out std_logic;
            done  : out std_logic;
            ready : out std_logic;
            -- Test lines
            netScores_address0 : out std_logic_vector(3 downto 0);
            netScores_d0 : out std_logic_vector(15 downto 0);
            netScores_ce0 : out std_logic;
            netScores_we0 : out std_logic
        );
    END COMPONENT;
    
    signal ap_clk : std_logic := '0';
    signal ap_rst : std_logic := '1';
    signal ap_start : std_logic := '0';
    signal ap_idle : std_logic;
    signal ap_done : std_logic;
    signal ap_ready : std_logic;
    signal netScores_address0 : std_logic_vector(3 downto 0);
    signal netScores_d0 : std_logic_vector(15 downto 0);
    signal netScores_ce0 : std_logic;
    signal netScores_we0 : std_logic;
    
    constant clk_period : time := 10 ns;
begin
    lenet5top_0 : lenet5top
        PORT MAP (
            -- Clock and reset
            rst => ap_rst,
            clk => ap_clk,
            -- Control lines
            start => ap_start,
            idle => ap_idle,
            done => ap_done,
            ready => ap_ready,
            -- Test lines
            netScores_address0 => netScores_address0,
            netScores_d0 => netScores_d0,
            netScores_ce0 => netScores_ce0,
            netScores_we0 => netScores_we0
        );
        
    clk_proc : process
    begin
        ap_clk <= '0';
        wait for clk_period / 2;
        ap_clk <= '1';
        wait for clk_period /2;
    end process;
    
    stim_proc : process
    begin
        wait for 2000 * clk_period;
        ap_rst <= '0';
        wait for 500 ns;
        ap_start <= '1';
        wait for clk_period;
        ap_start <= '0';
        wait;
    end process;

end Behavioral;
