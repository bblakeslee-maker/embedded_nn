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
use ieee.numeric_std.all;
use ieee.math_real.all;

library std;
use std.textio.all;
use IEEE.std_logic_TextIO.all;

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
            -- UART lines
            uart_tx : out std_logic;
            uart_rx : in std_logic
        );
    END COMPONENT;
    
    signal ap_clk : std_logic := '0';
    signal ap_rst : std_logic := '1';
    signal uart_tx : std_logic;
    signal uart_rx : std_logic := '1';
    
    constant clk_period : time := 10 ns;
    constant clk_per_sym : integer := 868;
    constant symbol_len : time := clk_period*clk_per_sym; -- 50 MHz / 115200 = 434.0278
begin
    lenet5top_0 : lenet5top
        PORT MAP (
            -- Clock and reset
            rst => ap_rst,
            clk => ap_clk,
            -- UART lines
            uart_tx => uart_tx,
            uart_rx => uart_rx
        );
        
    clk_proc : process
    begin
        ap_clk <= '0';
        wait for clk_period / 2;
        ap_clk <= '1';
        wait for clk_period /2;
    end process;
    
    stim_proc : process
        variable pixel        : integer;
        variable cols         : integer;
        variable rows         : integer;
        variable im_size      : integer;
        variable im_max       : integer;
        variable ack_byte     : integer; 
        variable filt_im_size : integer;
        
        type timg_mem is array(0 to 2 ** 10) of std_logic_vector(7 downto 0);
        variable input_img_mem : timg_mem := (others => (others => '0'));
        variable output_img_mem : timg_mem := (others => (others => '0'));
        type tscores is array(0 to 11) of std_logic_vector(31 downto 0);
        variable output_scores : tscores := (others => (others => '0'));
    
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
    
        procedure rx_char(
            chr : out integer
        ) is
            variable vect : std_logic_vector(7 downto 0);
        begin
            wait until uart_tx = '0'; -- start
            wait for symbol_len/2; -- center
            wait for symbol_len;
            for i in 0 to vect'high loop
                vect(i) := uart_tx;
                wait for symbol_len;
            end loop;
            chr := to_integer(unsigned(vect));
            wait for symbol_len/2;
        end rx_char;
        
        procedure read_pgm(
            cols    : out integer;
            rows    : out integer;
            im_size : out integer;
            img_max : out integer;
            im_data : out timg_mem
        ) is
            file data_in        : text open read_mode is "checker4.pgm";
            -- file data_in        : text open read_mode is "Lena.pgm";
            variable img_type   : line;
            variable dims       : line;
            variable l_img_max  : line;
            variable temp_cols  : integer;
            variable temp_rows  : integer;
            variable image_line : line;
            variable data_byte  : integer;
            variable read_ok    : boolean := true;
            variable counter    : integer := 0;
            variable comment    : line;
        begin
            -- Process header information
            readline(data_in, img_type);
            readline(data_in, comment);
            readline(data_in, dims);
            read(dims, temp_cols);
            read(dims, temp_rows);
            cols := temp_cols;
            rows := temp_rows;
            im_size := temp_cols * temp_rows;
            readline(data_in, l_img_max);
            read(l_img_max, img_max);
            
            -- Load image data
            while not endfile(data_in) loop
                readline(data_in, image_line);
                read(image_line, data_byte, read_ok);
                while read_ok = true loop
                    im_data(counter) := std_logic_vector(to_unsigned(data_byte, im_data(0)'length));
                    counter := counter + 1;
                    read(image_line, data_byte, read_ok);
                end loop;
                read_ok := true;
            end loop;
        end read_pgm;
        
        procedure send_pgm(
            cols       : in integer;
            rows       : in integer;
            im_size    : in integer;
            tx_im_data : in timg_mem
        ) is
            variable cols_slv : std_logic_vector(15 downto 0);
            variable rows_slv : std_logic_vector(15 downto 0);
            variable size_slv : std_logic_vector(31 downto 0);
        begin
            -- Transmit image data
            for i in 0 to im_size - 1 loop
                send_char(unsigned(tx_im_data(i)));
            end loop;
        end send_pgm;
        
        procedure get_scores(
            scores : out tscores
        ) is
            variable score_byte_l : integer;
            variable score_byte_lm : integer;
            variable score_byte_hm : integer;
            variable score_byte_h : integer;
            variable sbl_slv : std_logic_vector(7 downto 0);
            variable sblm_slv : std_logic_vector(7 downto 0);
            variable sbhm_slv : std_logic_vector(7 downto 0);
            variable sbh_slv : std_logic_vector(7 downto 0);
            variable score_float : std_logic_vector(31 downto 0);
        begin
            for i in 0 to 10 loop
                -- Get bytes over serial
                rx_char(score_byte_l);
                rx_char(score_byte_lm);
                rx_char(score_byte_hm);
                rx_char(score_byte_h);
                -- Typecast to SLV
                sbl_slv := std_logic_vector(to_unsigned(score_byte_l, sbl_slv'length));
                sblm_slv := std_logic_vector(to_unsigned(score_byte_lm, sblm_slv'length));
                sbhm_slv := std_logic_vector(to_unsigned(score_byte_hm, sbhm_slv'length));
                sbh_slv := std_logic_vector(to_unsigned(score_byte_h, sbh_slv'length));
                -- Assemble to float and store
                score_float(7 downto 0) := sbl_slv;
                score_float(15 downto 8) := sblm_slv;
                score_float(23 downto 16) := sbhm_slv;
                score_float(31 downto 24) := sbh_slv;
                scores(i) := score_float;
            end loop;
        end get_scores;
        
        procedure write_scores(
            scores : in tscores
        ) is
            file score_file : text open write_mode is "networkScores.txt";
            variable truth_line : line;
            variable delimiter : string(1 to 3) := " : ";
        begin
            for i in 1 to 10 loop
                write(truth_line, i - 1);
                write(truth_line, delimiter);
                write(truth_line, scores(i));
                writeline(score_file, truth_line);
            end loop;
        end write_scores;
    begin
        wait for 2000 * clk_period;
        ap_rst <= '0';
        wait for 500 ns;
        read_pgm(cols, rows, im_size, im_max, input_img_mem);
        report "Cols = " & integer'image(cols);
        report "Rows = " & integer'image(rows);
        report "Size = " & integer'image(im_size);
        report "Max = " & integer'image(im_max);
        send_pgm(cols, rows, im_size, input_img_mem);
        get_scores(output_scores);
        write_scores(output_scores);
        wait;
    end process;

end Behavioral;
