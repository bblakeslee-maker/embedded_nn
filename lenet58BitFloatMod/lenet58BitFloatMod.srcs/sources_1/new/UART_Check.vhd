----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2018 02:59:37 PM
-- Design Name: 
-- Module Name: UART_Check - Behavioral
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

entity UART_Check is
    port(
        clk : in std_logic;
        uart_rx : in std_logic;
        uart_tx : out std_logic
    );
end UART_Check;

architecture Behavioral of UART_Check is

    component UART is
        port(
            CLK_100MHZ         : in  std_logic;
            data_in            : in  std_logic_vector(7 downto 0);
            start_transmit     : in  std_logic;
            uart_rx               : in  std_logic;
            data_out           : out std_logic_vector(7 downto 0);
            read_data_complete : out std_logic;
            transmit_complete  : out std_logic;
            uart_tx            : out std_logic
        );
    end component;
    
    signal sLoopbackData : std_logic_vector(7 downto 0);
    signal sLoopbackSig  : std_logic;

begin

    uut : UART
        port map(
            CLK_100MHZ         => clk,
            data_in            => sLoopbackData,
            start_transmit     => sLoopbackSig,
            uart_rx            => uart_rx,
            data_out           => sLoopbackData,
            read_data_complete => sLoopbackSig,
            transmit_complete  => open,
            uart_tx            => uart_tx
        );


end Behavioral;
