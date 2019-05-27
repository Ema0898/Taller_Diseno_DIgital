module ps2_keyboard(
  input logic  clk, ps2_data,	ps2_clk,
  output  logic[6:0]  HEX0, HEX1
);

	wire scan_ready, read, clk_div;
	wire ps2_clk_filtered;
	wire[7:0] scan_code;
	wire[7:0] register;
	wire reset = 1'b0;

	Debounce debouncing(clk, scan_ready, read);
	
	frequency_divider f_divi(clk, clk_div);
	
	sincronizer sinc(clk_div, ps2_clk, ps2_clk_filtered);
	
	read_And_shift_register r_s_register(ps2_clk_filtered, reset, ps2_data, read, scan_code, scan_ready);
	memory mem( scan_ready, scan_code, register);
	
	DecoSeg dsp0(register[3:0],HEX0);
	DecoSeg dsp1(register[7:4],HEX1);




endmodule
