module frequency_divider

	(input logic clk, output logic clk_out);

	// divide de 50 a 25 MHz
	always_ff @(posedge clk)
		clk_out <= ~clk_out;
		
endmodule
