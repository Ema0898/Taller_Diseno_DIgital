module moveCounter
		(input logic clk, reset, enable, output logic [9:0] q);
		
		always_ff @(posedge clk)
		begin
		if (reset) q <= 'b0;
		else 
			begin
			if (enable) q <= q + 1;
			else q <= q;
			end		
		end		
		
endmodule 