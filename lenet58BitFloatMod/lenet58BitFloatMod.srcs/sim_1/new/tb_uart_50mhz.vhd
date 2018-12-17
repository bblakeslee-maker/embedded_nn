----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2018 10:31:39 AM
-- Design Name: 
-- Module Name: tb_uart_50mhz - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_uart_50mhz is
--  Port ( );
end tb_uart_50mhz;

architecture Behavioral of tb_uart_50mhz is
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
    
    signal clk : std_logic;
    signal data_loopback : std_logic_vector(7 downto 0);
    signal ctrl_loopback : std_logic;
    signal uart_rx : std_logic := '1';
    signal transmit_complete : std_logic;
    signal uart_tx : std_logic;
    
    constant CLK_PERIOD : time := 10 ns;
    constant clk_per_sym : integer := 868;
    constant symbol_len : time := clk_period*clk_per_sym; -- 50 MHz / 115200 = 434.0278
begin

    uut : UART
        port map(
            CLK_100MHZ         => clk,
            data_in            => data_loopback,
            start_transmit     => ctrl_loopback,
            uart_rx            => uart_rx,
            data_out           => data_loopback,
            read_data_complete => ctrl_loopback,
            transmit_complete  => transmit_complete,
            uart_tx            => uart_tx
        );
        
    clk_proc : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;
    
    stim_proc : process
        procedure send_char(
            chr : in unsigned(7 downto 0)
        ) is begin
            wait for symbol_len; -- wait for the stop bit, but at the top
                                 -- Then it can go to rx as soon as it's done TXing
            uart_rx <= '0';
            wait for symbol_len;
            for i in 0 to chr'high loop
                uart_rx <= chr(i);
                wait for symbol_len;
            end loop;
            uart_rx <= '1';
        end send_char;
    begin
        send_char(X"55");
        wait;
    end process;

end Behavioral;
