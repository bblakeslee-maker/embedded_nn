----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2018 07:26:29 PM
-- Design Name: 
-- Module Name: tb_serializer - Behavioral
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

entity tb_serializer is
--  Port ( );
end tb_serializer;

architecture Behavioral of tb_serializer is
    component serializer is
        port(
            clk      : in std_logic;
            rst      : in std_logic;
            -- Score RAM side
            data_in  : in std_logic_vector(31 downto 0);
            addr     : out std_logic_vector(3 downto 0);
            en       : out std_logic;
            -- TX FIFO side
            data_out : out std_logic_vector(7 downto 0);
            full     : in std_logic;
            write    : out std_logic;
            -- Control signals
            start    : in std_logic;
            idle     : out std_logic
        );
    end component;
    
    COMPONENT testROM
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;
    
    signal clk : std_logic;
    signal rst : std_logic;
    signal data_in : std_logic_vector(31 downto 0);
    signal addr : std_logic_vector(3 downto 0);
    signal en : std_logic;
    signal data_out : std_logic_vector(7 downto 0);
    signal full : std_logic := '0';
    signal write : std_logic;
    signal start : std_logic := '0';
    signal idle  : std_logic;
    
    constant CLK_PERIOD : time := 20 ns;
begin
    uut : serializer
        port map(
            clk      => clk,
            rst      => rst,
            -- Score RAM side
            data_in  => data_in,
            addr     => addr,
            en       => en,
            -- TX FIFO side
            data_out => data_out,
            full     => full,
            write    => write,
            -- Control signals
            start    => start,
            idle     => idle
        );
        
    testROM_0 : testROM
        PORT MAP (
            clka => clk,
            ena => en,
            addra => addr,
            douta => data_in
        );
        
    clk_proc : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;
    
    stim_proc : process
    begin
        rst <= '1';
        wait for 10 * CLK_PERIOD;
        rst <= '0';
        wait for 10 * CLK_PERIOD;
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';
        wait for 20 * CLK_PERIOD;
--        full <= '1';
--        wait for 20 * CLK_PERIOD;
--        full <= '0';
        wait;
    end process;

end Behavioral;
