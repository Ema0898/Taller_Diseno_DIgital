module register	
	#(parameter N = 4)
	(input logic clk, reset, enb, input logic [N-1:0] d, output logic [N-1:0] q);
	
	always_ff @(negedge clk)
		begin
		if (reset) q <= 'b0;
		else 
			begin
			if (enb) q <= d;
			else q <= q;
			end		
		end

endmodule