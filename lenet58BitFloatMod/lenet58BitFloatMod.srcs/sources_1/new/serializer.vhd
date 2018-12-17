----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2018 06:22:29 PM
-- Design Name: 
-- Module Name: serializer - Behavioral
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

entity serializer is
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
end serializer;

architecture Behavioral of serializer is
    type t_ser_states is (SER_IDLE, SER_EN, SER_READ, WAIT_L, WRITE_L, WAIT_LM, WRITE_LM, WAIT_HM, WRITE_HM, WAIT_H, WRITE_H, INC_ADDR);
    signal sser_state, sser_ns : t_ser_states;
    
    signal saddr : integer range 0 to 11;
    signal sdata : std_logic_vector(31 downto 0) := (others => '0');

begin
    -- Transition process
    process(clk)
    begin
        if rising_edge(clk) then
            if(rst = '1') then
                sser_state <= SER_IDLE;
            else
                sser_state <= sser_ns;
            end if;
        end if;
    end process;
    
    -- Next state process
    process(sser_state, start, full, saddr)
    begin
        case sser_state is
            when SER_IDLE =>
                if start = '1' then
                    sser_ns <= SER_EN;
                else
                    sser_ns <= SER_IDLE;
                end if;
            when SER_EN =>
                sser_ns <= SER_READ;
            when SER_READ =>
                sser_ns <= WAIT_L;
            when WAIT_L =>
                if full = '1' then
                    sser_ns <= WAIT_L;
                else
                    sser_ns <= WRITE_L;
                end if;
            when WRITE_L =>
                sser_ns <= WAIT_LM;
            when WAIT_LM =>
                if full = '1' then
                    sser_ns <= WAIT_LM;
                else
                    sser_ns <= WRITE_LM;
                end if;
            when WRITE_LM =>
                sser_ns <= WAIT_HM;
            when WAIT_HM =>
                if full = '1' then
                    sser_ns <= WAIT_HM;
                else
                    sser_ns <= WRITE_HM;
                end if;
            when WRITE_HM =>
                sser_ns <= WAIT_H;
            when WAIT_H =>
                if full = '1' then
                    sser_ns <= WAIT_H;
                else
                    sser_ns <= WRITE_H;
                end if;
            when WRITE_H =>
                sser_ns <= INC_ADDR;
            when INC_ADDR =>
                if saddr = 11 then
                    sser_ns <= SER_IDLE;
                else
                    sser_ns <= SER_EN;
                end if;
            when others =>
                sser_ns <= SER_IDLE;
        end case;
    end process;
    
    -- Idle output process
    process(clk)
    begin
        if rising_edge(clk) then
            if sser_ns = SER_IDLE then
                idle <= '1';
            else
                idle <= '0';
            end if;
        end if;
    end process;
    
    -- Enable output process
    process(clk)
    begin
        if rising_edge(clk) then
            if sser_ns = SER_EN then
                en <= '1';
            else
                en <= '0';
            end if;
        end if;
    end process;
    
    -- Data read process
    process(clk)
    begin
        if rising_edge(clk) then
            if sser_state = SER_READ then
                sdata <= data_in;
            else
                sdata <= sdata;
            end if;
        end if;
    end process;
    
    -- Address process
    process(clk)
    begin
        if rising_edge(clk) then
            if sser_ns = INC_ADDR then
                saddr <= saddr + 1;
            elsif sser_ns = SER_IDLE then
                saddr <= 0;
            else
                saddr <= saddr;
            end if;
        end if;
    end process;
    
    -- Data out/Write process
    process(clk)
    begin
        if rising_edge(clk) then
            case sser_ns is
                when WRITE_L =>
                    write <= '1';
                    data_out <= sdata(7 downto 0);
                when WRITE_LM =>
                    write <= '1';
                    data_out <= sdata(15 downto 8);
                when WRITE_HM =>
                    write <= '1';
                    data_out <= sdata(23 downto 16);
                when WRITE_H =>
                    write <= '1';
                    data_out <= sdata(31 downto 24);
                when others =>
                    write <= '0';
            end case;
        end if;
    end process;
    
    -- Address output
    addr <= std_logic_vector(to_unsigned(saddr, 4));

end Behavioral;
