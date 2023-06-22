-- Test bench for jFIFO
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIFO_TX_TB is
end FIFO_TX_TB;

architecture Behavioral of FIFO_TX_TB is
    signal DATAOUT : std_logic_vector(7 downto 0);
    signal full, empty : std_logic;
    signal clock, reset, wn, rn : std_logic;
    signal DATAIN : std_logic_vector(7 downto 0);
begin
    -- Instantiate the jFIFO
    uut: entity work.fifo_tx
        port map (
            DATAOUT => DATAOUT,
            full => full,
            empty => empty,
            clock => clock,
            reset => reset,
            wn => wn,
            rn => rn,
            DATAIN => DATAIN
        );
    
    stimulus: process
    begin
        -- Reset sequence
        clock <= '0'; DATAIN <= "00000000";
        reset <= '1'; clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        reset <= '0';

        report "Start testing";

        -- First write some data into the queue
        wn <= '1'; rn <= '0';
        DATAIN <= "01100100"; -- equivalent to 8'd100
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "10010110"; -- equivalent to 8'd150
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "11001000"; -- equivalent to 8'd200
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00101000"; -- equivalent to 8'd40
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000110"; -- equivalent to 8'd70
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000001"; -- equivalent to 8'd65
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00001111"; -- equivalent to 8'd15
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
 	DATAIN <= "01100100"; -- equivalent to 8'd100
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "10010110"; -- equivalent to 8'd150
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "11001000"; -- equivalent to 8'd200
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00101000"; -- equivalent to 8'd40
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000110"; -- equivalent to 8'd70
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000001"; -- equivalent to 8'd65
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00001111"; -- equivalent to 8'd15
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
 	DATAIN <= "01100100"; -- equivalent to 8'd100
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "10010110"; -- equivalent to 8'd150
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "11001000"; -- equivalent to 8'd200
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00101000"; -- equivalent to 8'd40
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000110"; -- equivalent to 8'd70
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000001"; -- equivalent to 8'd65
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00001111"; -- equivalent to 8'd15
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
	DATAIN <= "01100100"; -- equivalent to 8'd100
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "10010110"; -- equivalent to 8'd150
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "11001000"; -- equivalent to 8'd200
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00101000"; -- equivalent to 8'd40
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000110"; -- equivalent to 8'd70
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000001"; -- equivalent to 8'd65
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00001111"; -- equivalent to 8'd15
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
 	DATAIN <= "01100100"; -- equivalent to 8'd100
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "10010110"; -- equivalent to 8'd150
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "11001000"; -- equivalent to 8'd200
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00101000"; -- equivalent to 8'd40
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000110"; -- equivalent to 8'd70
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000001"; -- equivalent to 8'd65
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00001111"; -- equivalent to 8'd15
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
 	DATAIN <= "01100100"; -- equivalent to 8'd100
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "10010110"; -- equivalent to 8'd150
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "11001000"; -- equivalent to 8'd200
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00101000"; -- equivalent to 8'd40
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000110"; -- equivalent to 8'd70
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "01000001"; -- equivalent to 8'd65
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        DATAIN <= "00001111"; -- equivalent to 8'd15
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;

        -- Now start reading and checking the values
        wn <= '0'; rn <= '1';
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;
        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01100100") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "10010110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "11001000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00101000") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000110") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "01000001") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (DATAOUT = "00001111") report "FAIL " & DATAOUT severity FAILURE;

        clock <= '1'; wait for 5 ns; clock <= '0'; wait for 5 ns;
        --assert (empty = '1') report "FAIL " & std_logic'image(empty) severity FAILURE;

        wait; -- wait forever
    end process stimulus;

end Behavioral;
