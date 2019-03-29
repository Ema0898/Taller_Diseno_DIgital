module fsm_adder_display_test();

 logic clk, reset, button ,switch;
 logic[1:0] state;
 logic[32:0] out1;
	
	floating_adder_fsm_display DUT(clk, reset, button, switch, out1, state);
	
	initial begin
	
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 0; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 0; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		#10 clk = 1; reset = 1; button = 1; switch = 1;
		#1	$display("clk = %b, reset = %b, button = %b, switch = %b, out1 = %b, state = %b", 
						clk, reset, button, switch, out1, state);
						
		
		
	
	end 

endmodule 