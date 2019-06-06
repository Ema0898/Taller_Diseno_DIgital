module video_game(input logic clk, reset, ps2_data, ps2_clk,
						output logic [3:0] ff_out,
						output logic vga_hs, vga_vs, vga_blank_n, clockVGA,
						output logic [7:0] red, green, blue);
	
  logic mem_enb, sprite_enb, selec, mem_write, low_clock;
  logic [7:0] keyboard_out;
  logic [31:0] pc, instr, data_mem_out, write_data, data_adr, read_data, sprite_in;
  
  //frequency_divider_cpu fdc(clk, ~reset, low_clock);
  
  ps2_keyboard keyboard(clk, ps2_data, ps2_clk, keyboard_out);  
 
  io_deco deco(data_adr, mem_enb, sprite_enb, selec); 
  data_memory dm(clk, (mem_write & mem_enb), data_adr, write_data, data_mem_out);
  instruction_memory im(pc, instr);
  
  mux_2_x_1 #(32) mux0(data_mem_out, {24'b0, 8'b1}, selec, read_data);
  flip_flop_D_IO #(32) ff(clk, ~reset, sprite_enb, write_data, sprite_in);
  
  processor CPU(clk, ~reset, instr, read_data, pc, data_adr, write_data, mem_write);
  
  assign ff_out = sprite_in[3:0];
  VGA vga(clk, reset, sprite_in[9:0], 10'b0, vga_hs, vga_vs, vga_blank_n, clockVGA, red, green, blue);

						
endmodule 