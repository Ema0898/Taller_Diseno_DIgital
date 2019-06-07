module ps2_keyboard(
  input logic  clk, ps2_data,	ps2_clk,
  output logic[7:0] register
);

	logic scan_ready, read, clk_div;
	logic ps2_clk_filtered;
	logic[7:0] scan_code;
	logic reset = 1'b0;

	Debounce debouncing(clk, scan_ready, read);
	
	frequency_divider f_divi(clk, clk_div);
	
	sincronizer sinc(clk_div, ps2_clk, ps2_clk_filtered);
	
	read_And_shift_register r_s_register(ps2_clk_filtered, reset, ps2_data, read, scan_code, scan_ready);
	assign register = scan_code;
endmodule