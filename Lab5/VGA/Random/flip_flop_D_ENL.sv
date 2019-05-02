module flip_flop_D_ENL	
	#(parameter N = 4)
	(input logic clk, ent, input logic [N-1:0] d, output logic [N-1:0] q);
	
	always_ff @(posedge clk)
	begin
	
		if(ent)
			q <= d;
		else
			q <= q;
	
	end

endmodule
