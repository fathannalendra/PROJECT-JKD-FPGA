--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:33:47 07/28/2023
-- Design Name:   
-- Module Name:   D:/14.5/half_adder/half_addertbw.vhd
-- Project Name:  half_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY half_addertbw IS
END half_addertbw;
 
ARCHITECTURE behavior OF half_addertbw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          a => a,
          b => b,
          sum => sum,
          carry => carry
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
a <='0';
b <='0';	
		
		-- hold reset state for 100 ns.
      wait for 100 ns;	
a <='0';
b <='1';	
		
		-- hold reset state for 100 ns.
      wait for 100 ns;	
a <='1';
b <='0';	
		
		-- hold reset state for 100 ns.
      wait for 100 ns;	
a <='1';
b <='1';	
		
		-- hold reset state for 100 ns.
      wait for 100 ns;	
    
   end process;

END;
