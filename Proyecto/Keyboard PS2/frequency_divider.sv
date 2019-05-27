module frequency_divider

	(input logic clk, output logic clk_out);

	// divide de 50 a 25 MHz
	always @(posedge clk)
		clk_out <= ~clk_out;
		
endmodule
