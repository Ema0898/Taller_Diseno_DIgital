module counter (input logic clk, reset, enable, output logic [1:0] q);
	
	always_ff @(posedge clk)
		begin
		if (reset) q <= 2'b0;
		else 
			begin
			if (enable) q <= q + 1;
			else q <= q;
			end		
		end

endmodule 