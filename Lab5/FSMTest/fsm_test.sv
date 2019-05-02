module fsm_test();

 logic clk, reset, seg3, button, guess;
 logic [1:0] out;
	
	fsm DUT(seg3, button, guess, clk, reset, out);

	initial begin
	
		seg3 = 0; button = 0; guess = 0; clk = 1; reset = 1; #10
		#1	$display("seg3 = %b, button = %b, guess = %b clk = %b, reset = %b, out = %b", 
						seg3, button, guess, clk, reset, out);
						
		seg3 = 1; button = 0; guess = 0; clk = 0; reset = 0; #10
		#1	$display("seg3 = %b, button = %b, guess = %b clk = %b, reset = %b, out = %b", 
						seg3, button, guess, clk, reset, out);
		
		seg3 = 1; button = 0; guess = 0; clk = 1; reset = 0; #10
		#1	$display("seg3 = %b, button = %b, guess = %b clk = %b, reset = %b, out = %b", 
						seg3, button, guess, clk, reset, out);	
			
		seg3 = 1; button = 1; guess = 0; clk = 0; reset = 0; #10
		#1	$display("seg3 = %b, button = %b, guess = %b clk = %b, reset = %b, out = %b", 
						seg3, button, guess, clk, reset, out);	
						
		seg3 = 1; button = 1; guess = 0; clk = 1; reset = 0; #10
		#1	$display("seg3 = %b, button = %b, guess = %b clk = %b, reset = %b, out = %b", 
						seg3, button, guess, clk, reset, out);	
	end 

endmodule 