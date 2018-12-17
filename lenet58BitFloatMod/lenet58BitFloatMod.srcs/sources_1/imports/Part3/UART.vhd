----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    UART - RTL
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

entity UART is
    port(
        CLK_100MHZ         : in  std_logic;
        data_in            : in  std_logic_vector(7 downto 0);
        start_transmit     : in  std_logic;
        uart_rx	           : in  std_logic;
        data_out           : out std_logic_vector(7 downto 0);
        read_data_complete : out std_logic;
        transmit_complete  : out std_logic;
        uart_tx            : out std_logic
    );
end UART;

architecture RTL of UART is
    component MLUART_RX is
        port(
            CLK_100MHZ         : in  std_logic;
            clk_en_16_x_baud   : in  std_logic;   
            read_data_complete : out std_logic;
            data_out           : out std_logic_vector(7 downto 0);
            UART_RX            : in  std_logic
        );
    end component;
    
    component synchro_2s is
        port(
            inputSig  : in std_logic;
            fastClk   : in std_logic;
            reset     : in std_logic;
            outputSig : out std_logic
        );
    end component;
    
    component BBUART_TX is
        port(
            CLK_100MHZ        : in  std_logic;
            clk_en_16_x_baud  : in  std_logic;
            data_in           : in  std_logic_vector(7 downto 0);
            start_transmit    : in  std_logic;
            transmit_complete : out std_logic;
            UART_TX           : out std_logic
        );
    end component;
    
    component rise_edge_det is
        port(
            inputSig  : in std_logic;
            fastClk   : in std_logic;
            reset     : in std_logic;
            outputSig : out std_logic
        );
    end component;
    
    component fall_edge_det is
        port(
            inputSig  : in std_logic;
            fastClk   : in std_logic;
            reset     : in std_logic;
            outputSig : out std_logic
        );
    end component;
    
    component sig_stretcher is
        port(
            fast_clk : in  std_logic;
            slow_clk : in  std_logic;
            sig      : in  std_logic;
            output   : out std_logic
        );
    end component;

    signal scount12                 : unsigned (11 downto 0) := (others => '0');
    signal sclk_en_16_x_baud        : std_logic := '0';
    signal read_data                : std_logic_vector(7 downto 0);
    signal sread_data_complete_slow : std_logic;
    signal sread_data_complete_fast : std_logic;
    signal start_transmit_slow      : std_logic;
    signal stransmit_complete_slow  : std_logic;
    signal stransmit_complete_fast  : std_logic;
    signal suart_rx                 : std_logic;

begin 
    read_data_complete <= sread_data_complete_fast;
    transmit_complete  <= stransmit_complete_fast;

    process(CLK_100MHZ)
    begin
        if CLK_100MHZ'event and CLK_100MHZ = '1' then
            -- if sclk_en_16_x_baud = '1' then
            if sread_data_complete_slow = '1' then
                data_out <= read_data;
            end if;
            -- end if;
        end if;
    end process;   

    RX_inst : MLUART_RX
        port map(
            CLK_100MHZ         => CLK_100MHZ,
            clk_en_16_x_baud   => sclk_en_16_x_baud,   
            read_data_complete => sread_data_complete_slow,
            data_out           => read_data,
            UART_RX            => suart_rx
        );
        
    synchro : synchro_2s
        port map(
            inputSig  => uart_rx,
            fastClk   => CLK_100MHZ,
            reset     => '0',
            outputSig => suart_rx
        );
        
    rdc_edge : rise_edge_det
        port map(
            inputSig  => sread_data_complete_slow,
            fastClk   => CLK_100MHZ,
            reset     => '0',
            outputSig => sread_data_complete_fast
        );
      
    TX_inst : BBUART_TX 
        port map(
            CLK_100MHZ        => CLK_100MHZ,
            clk_en_16_x_baud  => sclk_en_16_x_baud,
            data_in           => data_in,
            start_transmit    => start_transmit_slow,
            transmit_complete => stransmit_complete_slow,
            UART_TX           => UART_TX
        );
        
    tc_edge : fall_edge_det
        port map(
            inputSig  => stransmit_complete_slow,
            fastClk   => CLK_100MHZ,
            reset     => '0',
            outputSig => stransmit_complete_fast
        );
        
    st_stretch : sig_stretcher
        port map(
            fast_clk => CLK_100MHZ,
            slow_clk => sclk_en_16_x_baud,
            sig      => start_transmit,
            output   => start_transmit_slow
        );

    -- clock enable according to the required baud value
    process(CLK_100MHZ)
    begin
        if CLK_100MHZ'event and CLK_100MHZ = '1' then
            -- if scount = X"28B" then  ----  for    9600 baud : 100 MHZ / (16 * 9600)   = 651 => 0x28B / 
            -- if scount12 = X"36" then    ----  for  115200 baud : 100 MHZ / (16 * 115200) =  54 => 0x 36 /
            if scount12 = X"1B" then -- for 115200 baud: 50MHZ / (16 * 115200) = 27 => 0x1B
                scount12 <= (others => '0');
            else
                scount12 <= scount12 + 1;
            end if;
        end if;  
    end process;

    -- sclk_en_16_x_baud <= '1' when scount12 = X"36" else '0'; 
    sclk_en_16_x_baud <= '1' when scount12 = X"1B" else '0'; 

end RTL;

