module fsm_test();

 logic clk, reset;
 logic [1:0] conditions, out;
	
	fsm DUT(conditions, clk, reset, out);

	initial begin
	
		#10 conditions = 'b00; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 1;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b01; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b01; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b01; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 0; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
		#10 conditions = 'b00; clk = 1; reset = 0;
		#1	$display("conditions = %b, clk = %b, reset = %b, out = %b", conditions, clk, reset, out);
		
	end 

endmodule 