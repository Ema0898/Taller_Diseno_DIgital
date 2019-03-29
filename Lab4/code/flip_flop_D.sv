module flip_flop_D	
	#(parameter N = 4)
	(input logic clk, input logic [N-1:0] d, output logic [N-1:0] q);
	
	always_ff @(posedge clk)
		q <= d;

endmodule
