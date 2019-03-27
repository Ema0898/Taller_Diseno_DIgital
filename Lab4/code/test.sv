module test();

	logic [32:0] a, b, z;
	logic [1:0] conditions, state;
	logic clk, reset;
	
	floating_adder_fsm DUT(a, b, conditions, clk, reset, z, state);

	initial begin
	
	//Initial reset
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		//Comp exp
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Shifts
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		//Add
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		//Norm
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
		#10 a = 33'b001000000011000000000000000000000; b = 33'b001000000110001100110011001100110;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
				
	end 
	
endmodule 