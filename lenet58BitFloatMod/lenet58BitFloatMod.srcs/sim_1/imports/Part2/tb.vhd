----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    UART - TB
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use  IEEE.NUMERIC_STD.ALL;


ENTITY TB IS
END TB;

ARCHITECTURE behavior OF TB IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT UART_Check
        PORT(
                clk : in  std_logic;
                uart_rx    : in  std_logic;
                uart_tx    : out std_logic
            );
    END COMPONENT;

    --Inputs
    signal CLK_100MHZ : std_logic := '0';
    signal UART_RX    : std_logic;

    --Outputs
    signal LEDS    : std_logic_vector(7 downto 0);
    signal UART_TX : std_logic;

    -- Clock period definitions
    constant CLK_100MHZ_period : time := 20 ns;
    constant CLK_16xbaud : time := CLK_100MHZ_period*54*16;

    signal DATA : std_logic_vector(9 downto 0);

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: UART_Check PORT MAP (
         clk => CLK_100MHZ,
         UART_RX    => UART_RX,
         UART_TX    => UART_TX
     );

    -- Clock process definitions
    CLK_100MHZ_process :process
    begin
        CLK_100MHZ <= '0';
        wait for CLK_100MHZ_period/2;
        CLK_100MHZ <= '1';
        wait for CLK_100MHZ_period/2;
    end process;

    -- Stimulus process for 115200 baud rate
    stim_proc: process
    begin		
        UART_RX <= '1';
        wait for CLK_16xbaud;

        DATA <= B"0_10001100_1";
        wait for 0 ns;
        for i in DATA'range loop
            UART_RX <= DATA(i);
            wait for CLK_16xbaud;
        end loop;

        wait for 200 us;

        assert false
        report "End of simulation"
        severity failure;
    end process;
end;
