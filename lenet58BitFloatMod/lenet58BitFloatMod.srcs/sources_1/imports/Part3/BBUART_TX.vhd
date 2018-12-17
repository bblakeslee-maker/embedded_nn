----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2018 06:10:42 PM
-- Design Name: 
-- Module Name: BBUART_TX - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BBUART_TX is
port(
    CLK_100MHZ        : in std_logic;
    clk_en_16_x_baud  : in std_logic;
    data_in           : in std_logic_vector(7 downto 0);
    start_transmit    : in std_logic;
    transmit_complete : out std_logic;
    UART_TX           : out std_logic
);
end BBUART_TX;

architecture Behavioral of BBUART_TX is

type tstateTX is (idle, read_strobe, tstart, td0, td1, td2, td3, td4, td5, td6, td7, tstop, tdone);
signal sstateTX  : tstateTX;
signal scount4   : std_logic_vector(3 downto 0) := (others => '0');
signal tx_buffer : std_logic_vector(7 downto 0) := (others => '0');
signal tx_ff  : std_logic := '1';

begin
    
    -- Prevents bit contention on output port
    UART_TX <= tx_ff;

    -- Transmission state changes (OK)
    process(CLK_100MHZ)
    begin
        if CLK_100MHZ'event and CLK_100MHZ = '1' then
            if clk_en_16_x_baud = '1' then
                case sstateTX is
                    when idle        => if start_transmit = '1' then sstateTX <= read_strobe; end if;
                    when read_strobe => sstateTX <= tstart;
                    when tstart      => if scount4 = X"F" then sstateTX <= td0; end if;
                    when td0         => if scount4 = X"F" then sstateTX <= td1; end if;
                    when td1         => if scount4 = X"F" then sstateTX <= td2; end if;
                    when td2         => if scount4 = X"F" then sstateTX <= td3; end if;
                    when td3         => if scount4 = X"F" then sstateTX <= td4; end if;
                    when td4         => if scount4 = X"F" then sstateTX <= td5; end if;
                    when td5         => if scount4 = X"F" then sstateTX <= td6; end if;
                    when td6         => if scount4 = X"F" then sstateTX <= td7; end if;
                    when td7         => if scount4 = X"F" then sstateTX <= tstop; end if;
                    when tstop       => if scount4 = X"F" then sstateTX <= tdone; end if;
                    when tdone       => sstateTX <= idle;
                end case;
            end if;
        end if;
    end process;
    
    -- Data store process
    process(sstateTX)
    begin
        case sstateTX is
            when read_strobe => tx_buffer <= data_in;
            when others => null;
        end case;
    end process;
    
    -- Transmit complete process
    process(sstateTX)
    begin
        case sstateTX is
            when tdone  => transmit_complete <= '1';
            when others => transmit_complete <= '0';
        end case;
    end process;
    
    -- Data transmit process
    process(CLK_100MHZ)
    begin
        if CLK_100MHZ'event and CLK_100MHZ = '1' then 
            if clk_en_16_x_baud = '1' then
                case sstateTX is
                    when tstart => tx_ff <= '0';
                    -- when td0 | td1 | td2 | td3 | td4 | td5 | td6 | td7 => if scount4 = X"0" then tx_ff <= tx_buffer(0); tx_buffer <= ('0' & tx_buffer(7 downto 1)); end if;
                    when td0    => tx_ff <= tx_buffer(0);
                    when td1    => tx_ff <= tx_buffer(1);
                    when td2    => tx_ff <= tx_buffer(2);
                    when td3    => tx_ff <= tx_buffer(3);
                    when td4    => tx_ff <= tx_buffer(4);
                    when td5    => tx_ff <= tx_buffer(5);
                    when td6    => tx_ff <= tx_buffer(6);
                    when td7    => tx_ff <= tx_buffer(7);
                    when tstop  => tx_ff <= '1';
                    when others => null; --tx_ff <= '1'; -- OK
                end case;
            end if;
        end if;
    end process;
    
    -- Baud counter process (OK)
    process(CLK_100MHZ)
    begin
        if CLK_100MHZ'event and CLK_100MHZ = '1' then
            if clk_en_16_x_baud = '1' then 
                case sstateTX is
                    when tstart | td0 | td1 | td2 | td3 | td4 | td5 | td6 | td7 | tstop => scount4 <= scount4 + '1';
                    when others => scount4 <= (others => '0');
                end case;
            end if;
        end if;
    end process;

end Behavioral;
