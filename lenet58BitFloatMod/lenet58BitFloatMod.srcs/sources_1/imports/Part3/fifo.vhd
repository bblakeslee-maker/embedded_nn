----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2018 09:22:03 PM
-- Design Name: 
-- Module Name: fifo - Behavioral
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
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo is
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
end fifo;

architecture Behavioral of fifo is
type tmem is array(0 to 2 ** depth - 1) of std_logic_vector(width - 1 downto 0);
signal smem            : tmem := (others => (others => '0'));
signal head_ptr        : unsigned(depth - 1 downto 0);
signal tail_ptr        : unsigned(depth - 1 downto 0);
signal element_counter : integer range 0 to 2 ** depth;
begin

    -- Pointer tracking process
    process(clk)
    begin
        if reset = '1' then
            head_ptr        <= (others => '0');
            tail_ptr        <= (others => '0');
            element_counter <= 0;
        elsif clk'event and clk = '1' then
            if write = '1' then
                smem(to_integer(tail_ptr)) <= data_in;
                if tail_ptr = 2 ** depth - 1 then
                    tail_ptr <= (others => '0');
                else
                    tail_ptr <= tail_ptr + 1;
                end if;
                element_counter <= element_counter + 1;
            end if;
            
            if read = '1' then
                data_out <= smem(to_integer(head_ptr));
                if head_ptr = 2 ** depth - 1 then
                    head_ptr <= (others => '0');
                else
                    head_ptr <= head_ptr + 1;
                end if;
                element_counter <= element_counter - 1;
            end if;
        end if;
    end process;
    
    -- Control signal process
    process(clk)
    begin
        if reset = '1' then
            fifo_empty <= '1';
            fifo_full  <= '0';
        elsif clk'event and clk = '1' then
            if element_counter = 0 then
                fifo_empty <= '1';
                fifo_full  <= '0';
            elsif element_counter = 2 ** depth then
                fifo_empty <= '0';
                fifo_full  <= '1';
            else
                fifo_empty <= '0';
                fifo_full  <= '0';
            end if;
        end if;
    end process;

end Behavioral;
