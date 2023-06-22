-- This is linear queue / FIFO
-- The queue length 8
-- The data width is also 8 bits
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIFO_TX is
    Port (
        clock : in std_logic;
        reset : in std_logic;
        DATAIN : in std_logic_vector(7 downto 0);
        DATAOUT : out std_logic_vector(7 downto 0);
        wn : in std_logic;
        rn : in std_logic;
        full : out std_logic;
        empty : out std_logic
    );
end FIFO_TX;

architecture Behavioral of FIFO_TX is
    type mem_type is array(0 to 33) of std_logic_vector(7 downto 0); -- 0 7 
    signal memory : mem_type := (others => (others => '0'));
    signal wptr : integer range 0 to 33 := 0; -- 7 
    signal rptr : integer range 0 to 33 := 0; -- 7 
    signal full_s, empty_s : std_logic := '0'; -- internal full and empty signals
begin
    full <= full_s;
    empty <= empty_s;

    full_s <= '1' when ((wptr = 33) and (rptr = 0)) else '0'; -- 7 
    empty_s <= '1' when (wptr = rptr) else '0';

    process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                memory <= (others => (others => '0'));
                DATAOUT <= (others => '0');
                wptr <= 0;
                rptr <= 0;
            elsif (wn = '1' and full_s = '0') then
                memory(wptr) <= DATAIN;
                wptr <= wptr + 1;
            elsif (rn = '1' and empty_s = '0') then
                DATAOUT <= memory(rptr);
                rptr <= rptr + 1;
            end if;
        end if;
    end process;
end Behavioral;
