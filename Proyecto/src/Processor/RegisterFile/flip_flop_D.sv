module flip_flop_D	
	#(parameter N = 4)
	(input logic clk, input logic enb, input logic [N-1:0] d, output logic [N-1:0] q);
	
	always_ff @(negedge clk)
		begin
		if (reset) q <= 'b0;
		else 
			begin
			if (enable) q <= d;
			else q <= q;
			end		
		end

endmodule
