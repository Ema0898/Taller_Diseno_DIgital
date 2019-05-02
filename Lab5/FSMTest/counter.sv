module counter (input logic clk, reset, output logic [1:0] q);
	
	always_ff @(posedge clk, posedge reset)
		begin
		if (reset) q <= 2'b0;
		else q <= q + 1;	
		end

endmodule 