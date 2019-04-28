module moveCounter
		(input logic clk, reset, enable, input logic [9:0] initPos, output logic [9:0] q);
		
		always_ff @(posedge clk)
		begin
		if (reset) q <= initPos;
		else 
			begin
			if (enable) q <= q + 1;
			else q <= q;
			end		
		end		
		
endmodule 