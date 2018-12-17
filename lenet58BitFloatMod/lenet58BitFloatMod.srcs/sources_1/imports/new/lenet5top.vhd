----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2018 02:21:19 PM
-- Design Name: 
-- Module Name: lenet5top - Behavioral
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

entity lenet5top is
    port(
        -- Clock and reset
        rst     : in std_logic;
        clk     : in std_logic;
        -- UART lines
        uart_tx : out std_logic;
        uart_rx : in std_logic
    );
end lenet5top;

architecture Behavioral of lenet5top is

    component clk_wiz_0
        port(
            clk_out1          : out    std_logic;
            reset             : in     std_logic;
            locked            : out    std_logic;
            clk_in1           : in     std_logic
        );
    end component;
    
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
    
    component fifo is
        generic(
            depth : integer;    -- This is 2^depth
            width : integer
        );
        port(
            clk        : in std_logic;
            reset      : in std_logic;
            write      : in std_logic;
            read       : in std_logic;
            data_in    : in std_logic_vector(width - 1 downto 0);
            fifo_full  : out std_logic;
            fifo_empty : out std_logic;
            data_out   : out std_logic_vector(width - 1 downto 0)
        );
    end component;
    
    COMPONENT image_ram
      PORT (
        clka : IN STD_LOGIC;
        clkb : IN STD_LOGIC;
        -- FIFO side
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- NN side
        enb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
    
    COMPONENT lenetSynthMatlab_0
    -- component lenetSynthMatlab_1
        PORT (
            -- Clock and reset
            ap_clk : IN STD_LOGIC;
            ap_rst : IN STD_LOGIC;
            -- Control lines
            ap_start : IN STD_LOGIC;
            ap_done : OUT STD_LOGIC;
            ap_idle : OUT STD_LOGIC;
            ap_ready : OUT STD_LOGIC;
            -- Input memory interface
            inputImg_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            inputImg_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            inputImg_ce0 : OUT STD_LOGIC;
            -- Output memory interface
            netScores_address0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            netScores_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            netScores_ce0 : OUT STD_LOGIC;
            netScores_we0 : OUT STD_LOGIC
        );
    END COMPONENT;
    
    COMPONENT score_ram
        PORT (
            clka : IN STD_LOGIC;
            clkb : IN STD_LOGIC;
            -- NN Side
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            -- Serializer side
            enb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;
        
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
    
    -- Clock distribution signals
    signal clk_50MHZ : std_logic;
    signal rst_50 : std_logic;
    signal rst_50_act_low : std_logic;
    
    -- Datapath signals
    -- RX UART to RX FIFO signals
    signal srx_uart_to_fifo : std_logic_vector(7 downto 0);
    -- RX FIFO to Image RAM signals
    signal sfifo_to_img_ram_data : std_logic_vector(7 downto 0);
    -- Image RAM to LeNet5 signals
    signal sImageAddress : std_logic_vector(9 downto 0);
    signal sImageData    : std_logic_vector(7 downto 0);
    signal sImageEnable  : std_logic;
    -- LeNet5 to score RAM signals
    signal sScoreAddress : std_logic_vector(3 downto 0);
    signal sScoreData    : std_logic_vector(31 downto 0);
    signal sScoreCE      : std_logic;
    signal sScoreWE      : std_logic_vector(0 downto 0);
    -- Score RAM to Serializer
    signal sscore_ram_to_ser_data : std_logic_vector(31 downto 0);
    signal sscore_ram_to_ser_addr : std_logic_vector(3 downto 0);
    signal sscore_ram_en : std_logic;
    -- Serializer to TX FIFO
    signal sser_to_tx_fifo_data : std_logic_vector(7 downto 0);
    signal stx_full : std_logic;
    signal stx_write : std_logic;
    -- TX FIFO to TX UART
    signal stx_fifo_to_uart_tx : std_logic_vector(7 downto 0);
    
    -- Control signals
    -- UART
    signal sread_data_complete : std_logic;
    signal sstart_transmit     : std_logic;
    signal stransmit_complete  : std_logic;
    -- RX FIFO
    signal srx_write : std_logic;
    signal srx_read  : std_logic;
    signal srx_full  : std_logic;
    signal srx_empty : std_logic;
    -- Image RAM
    signal simg_ram_addra : std_logic_vector(9 downto 0);
    signal simg_ram_ena   : std_logic;
    signal simg_ram_wea   : std_logic_vector(0 downto 0);
    -- LeNet5
    signal snn_start : std_logic;
    signal snn_idle  : std_logic;
    -- Serializer
    signal sser_start : std_logic;
    signal sser_idle  : std_logic;
    -- TX FIFO
    signal stx_read : std_logic;
    signal stx_empty : std_logic;
    
    -- Metadata
    signal simg_addr : integer range 0 to 1024;
    
    -- System constants
    -- RX FIFO
    constant RX_DEPTH : integer := 9;
    constant RX_WIDTH : integer := 8;
    -- TX FIFO
    constant TX_DEPTH : integer := 10;
    constant TX_WIDTH : integer := 8;
    
    -- State enumeration for UART RX to RX FIFO controller
    type t_rx_states is (RX_IDLE, RX_WRITE);
    signal srx_state, srx_ns : t_rx_states;
    
    -- State enumeration for UART TX to TX FIFO controller
    type t_tx_states is (TX_IDLE, TX_FIFO_READ, TX_UART_WRITE, TX_UART_WAIT);
    signal stx_state, stx_ns : t_tx_states;
    
    -- State enumeration for LeNet5 system
    type t_nn_states is (NN_IDLE, RX_WAIT, RD_FIFO, EN_IMG_RAM, WR_IMG_RAM, INC_IMG_ADDR, LENET_START, LENET_WAIT, SERIALIZE, SERIALIZE_WAIT);
    signal snn_state, snn_ns : t_nn_states;
begin

    clk_div_0 : clk_wiz_0
        port map ( 
            -- Clock out ports  
            clk_out1 => clk_50MHZ,                
            reset => rst,
            locked => rst_50_act_low,
            clk_in1 => clk
        );
        
    rst_50 <= not rst_50_act_low;

    uart_0 : UART
        port map(
            CLK_100MHZ         => clk_50MHZ,
            data_in            => stx_fifo_to_uart_tx,
            start_transmit     => sstart_transmit,
            uart_rx            => uart_rx,
            data_out           => srx_uart_to_fifo,
            read_data_complete => sread_data_complete,
            transmit_complete  => stransmit_complete,
            uart_tx            => uart_tx
        );
        
    rx_fifo_0 : fifo
        generic map(
            depth => RX_DEPTH,
            width => RX_WIDTH
        )
        port map(
            clk        => clk_50MHZ,
            reset      => rst_50,
            write      => srx_write,
            read       => srx_read,
            data_in    => srx_uart_to_fifo,
            fifo_full  => srx_full,
            fifo_empty => srx_empty,
            data_out   => sfifo_to_img_ram_data
        );
        
    image_ram_0 : image_ram
        PORT MAP (
            clka => clk_50MHZ,
            clkb => clk_50MHZ,
            -- FIFO Side
            ena => simg_ram_ena,
            wea => simg_ram_wea,
            addra => simg_ram_addra,
            dina => sfifo_to_img_ram_data,
            -- NN Side
            enb => sImageEnable,
            addrb => sImageAddress,
            doutb => sImageData
        );
        
    lenet5_0 : lenetSynthMatlab_0
    -- lenet5_0 : lenetSynthMatlab_1
        PORT MAP (
            -- Clocks and resets
            ap_clk => clk_50MHZ,
            ap_rst => rst_50,
            -- Control signals
            ap_start => snn_start,
            ap_done => open,
            ap_idle => snn_idle,
            ap_ready => open,
            -- Input image memory interface
            inputImg_address0 => sImageAddress,
            inputImg_q0 => sImageData,
            inputImg_ce0 => sImageEnable,
            -- Output scores memory interface
            netScores_address0 => sScoreAddress,
            netScores_d0 => sScoreData,
            netScores_ce0 => sScoreCE,
            netScores_we0 => sScoreWE(0)
        );
        
    score_ram_0 : score_ram
        PORT MAP (
            clka => clk_50MHZ,
            clkb => clk_50MHZ,
            -- NN Side
            ena => sScoreCE,
            wea => sScoreWE,
            addra => sScoreAddress,
            dina => sScoreData,
            -- Serializer Side
            enb => sscore_ram_en,
            addrb => sscore_ram_to_ser_addr,
            doutb => sscore_ram_to_ser_data
        );
        
    serializer_0 : serializer
        port map(
            clk      => clk_50MHZ,
            rst      => rst_50,
            -- Score RAM side
            data_in  => sscore_ram_to_ser_data,
            addr     => sscore_ram_to_ser_addr,
            en       => sscore_ram_en,
            -- TX FIFO side
            data_out => sser_to_tx_fifo_data,
            full     => stx_full,
            write    => stx_write,
            -- Control signals
            start    => sser_start,
            idle     => sser_idle
        );
        
    tx_fifo_0 : fifo
        generic map(
            depth => TX_DEPTH,
            width => TX_WIDTH
        )
        port map(
            clk        => clk_50MHZ,
            reset      => rst_50,
            write      => stx_write,
            read       => stx_read,
            data_in    => sser_to_tx_fifo_data,
            fifo_full  => stx_full,
            fifo_empty => stx_empty,
            data_out   => stx_fifo_to_uart_tx
        );
        
    -- ***************************************************************************************
    -- UART RX to RX FIFO controller
    -- Transition process
    process(clk_50MHZ)
    begin
        if (rising_edge (clk_50MHZ)) then
            if(rst_50 = '1') then
                srx_state <= RX_IDLE;
            else
                srx_state <= srx_ns;
            end if;
        end if;
    end process;
    
    -- Next state process
    process(srx_state, sread_data_complete)
    begin
        case srx_state is
            when RX_IDLE =>
                if sread_data_complete = '1' then
                    srx_ns <= RX_WRITE;
                else
                    srx_ns <= RX_IDLE;
                end if;
            when RX_WRITE =>
                srx_ns <= RX_IDLE;
            when others =>
                srx_ns <= RX_IDLE;
        end case;
    end process;
    
    -- RX_WRITE output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if srx_ns = RX_WRITE then
                if srx_full = '0' then
                    srx_write <= '1';
                else
                    srx_write <= '0';
                end if;
            else
                srx_write <= '0';
            end if;
        end if;
    end process;
    
    -- ***************************************************************************************
    -- TX FIFO to UART TX controller
    -- Transition process
    process(clk_50MHZ)
    begin
        if (rising_edge (clk_50MHZ)) then
            if(rst_50 = '1') then
                stx_state <= TX_IDLE;
            else
                stx_state <= stx_ns;
            end if;
        end if;
    end process;
    
    -- Next state process
    process(stx_state, stx_empty, stransmit_complete)
    begin
        case stx_state is
            when TX_IDLE =>
                if stx_empty = '0' then
                    stx_ns <= TX_FIFO_READ;
                else
                    stx_ns <= TX_IDLE;
                end if;
            when TX_FIFO_READ =>
                stx_ns <= TX_UART_WRITE;
            when TX_UART_WRITE =>
                stx_ns <= TX_UART_WAIT;
            when TX_UART_WAIT =>
                if stransmit_complete = '1' then
                    stx_ns <= TX_IDLE;
                else
                    stx_ns <= TX_UART_WAIT;
                end if;
            when others =>
        end case;
    end process;
    
    -- TX_FIFO_READ output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if stx_ns = TX_FIFO_READ then
                stx_read <= '1';
            else
                stx_read <= '0';
            end if;
        end if;
    end process;
    
    -- TX_UART_WRITE output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if stx_ns = TX_UART_WRITE then
                sstart_transmit <= '1';
            else
                sstart_transmit <= '0';
            end if;
        end if;
    end process;
    
    -- ***************************************************************************************
    -- LeNet5 controller
    -- Transition process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if rst_50 = '1' then
                snn_state <= NN_IDLE;
            else
                snn_state <= snn_ns;
            end if;
        end if;
    end process;
    
    -- Next state process
    process(snn_state, srx_empty, simg_addr, snn_idle, sser_idle)
    begin
        case snn_state is
            when NN_IDLE =>
                if srx_empty = '1' then
                    snn_ns <= NN_IDLE;
                else
                    snn_ns <= RX_WAIT;
                end if;
            when RX_WAIT =>
                if srx_empty = '1' then
                    snn_ns <= RX_WAIT;
                else
                    snn_ns <= RD_FIFO;
                end if;
            when RD_FIFO =>
                snn_ns <= EN_IMG_RAM;
            when EN_IMG_RAM =>
                snn_ns <= WR_IMG_RAM;
            when WR_IMG_RAM =>
                snn_ns <= INC_IMG_ADDR;
            when INC_IMG_ADDR =>
                if simg_addr = 1024 then
                    snn_ns <= LENET_START;
                else
                    snn_ns <= RX_WAIT;
                end if;
            when LENET_START =>
                snn_ns <= LENET_WAIT;
            when LENET_WAIT =>
                if snn_idle = '1' then
                    snn_ns <= SERIALIZE;
                else
                    snn_ns <= LENET_WAIT;
                end if;
            when SERIALIZE =>
                snn_ns <= SERIALIZE_WAIT;
            when SERIALIZE_WAIT =>
                if sser_idle = '1' then
                    snn_ns <= NN_IDLE;
                else
                    snn_ns <= SERIALIZE_WAIT;
                end if;
            when others =>
                snn_ns <= NN_IDLE;
        end case;
    end process;
    
    -- Read RX FIFO output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if snn_ns = RD_FIFO then
                srx_read <= '1';
            else
                srx_read <= '0';
            end if;
        end if;
    end process;
    
    -- Write image RAM output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if snn_ns = EN_IMG_RAM then
                simg_ram_ena <= '1';
                simg_ram_wea(0) <= '0';
            elsif snn_ns = WR_IMG_RAM then
                simg_ram_ena <= '1';
                simg_ram_wea(0) <= '1';
            else
                simg_ram_ena <= '0';
                simg_ram_wea(0) <= '0';
            end if;
        end if;
    end process;
    
    -- Image RAM output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if snn_ns = INC_IMG_ADDR then
                simg_addr <= simg_addr + 1;
            elsif snn_ns = NN_IDLE then
                simg_addr <= 0;
            else
                simg_addr <= simg_addr;
            end if;
        end if;
    end process;
    
    -- Start LeNet5 output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if snn_ns = LENET_START then
                snn_start <= '1';
            else
                snn_start <= '0';
            end if;
        end if;
    end process;
    
    -- Start serializer output process
    process(clk_50MHZ)
    begin
        if rising_edge(clk_50MHZ) then
            if snn_ns = SERIALIZE then
                sser_start <= '1';
            else
                sser_start <= '0';
            end if;
        end if;
    end process;
    
    simg_ram_addra <= std_logic_vector(to_unsigned(simg_addr, 10));

end Behavioral;
