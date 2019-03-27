module register	
	#(parameter N = 4)
	(input logic clk, en, input logic [N-1:0] d, output logic [N-1:0] q);
	
	always_ff @(posedge clk)
		if (en) q <= d;
		else q <= q;

endmodule