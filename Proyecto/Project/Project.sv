module Project();

  logic clk, reset, ps2_data, ps2_clk, vga_hs, vga_vs, vga_blank_n, clockVGA;
  logic [7:0] red, green, blue;
  logic [3:0] ff_out;
  
  video_game vg(clk, reset, ps2_data, ps2_clk, ff_out, vga_hs, vga_vs, vga_blank_n, clockVGA, red, green, blue);
  
  initial begin
		reset <= 0; #5; reset <= 1;
	end
	
	// generate clock to sequence tests
	always begin
		clk <= 1; # 5; clk <= 0; # 5;
	end

endmodule 