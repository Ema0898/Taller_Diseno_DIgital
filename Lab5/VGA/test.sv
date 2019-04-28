module test();
	
	logic clk, reset, enable;
	logic [9:0] pos = 300;
	logic [9:0] counter;
	
	moveCounter DUT(clk, reset, enable, pos, counter);
	
	initial begin
	
	clk = 1; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 0; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);		
	
	clk = 1; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);		
	
	clk = 0; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);
	
	clk = 1; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 0; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);		
	
	clk = 1; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 0; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 1; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);

	clk = 0; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 1; reset = 0; enable = 0; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 0; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 1; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);
	
	clk = 0; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);	
	
	clk = 1; reset = 0; enable = 1; #10;
	#1	$display("clk = %b,reset = %b, enable = %b, counter = %b", clk, reset, enable, counter);
	
	end	
endmodule 