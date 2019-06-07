module video_game(input logic clk, reset, ps2_data, ps2_clk,
						output logic [5:0] ff_out,
						output logic vga_hs, vga_vs, vga_blank_n, clockVGA,
						output logic [7:0] red, green, blue);
	
  logic mem_enb, sprite_enbX, sprite_enbY, mem_write, mem_read;
  logic [7:0] keyboard_out;
  logic [31:0] pc, instr, data_mem_out, write_data, data_adr, read_data, sprite_inX, sprite_inY;
  
  ps2_keyboard keyboard(clk, ps2_data, ps2_clk, keyboard_out);  
 
  io_deco deco(data_adr, instr, mem_enb, sprite_enbX, sprite_enbY); 
  data_memory dm(clk, (mem_write & mem_enb), data_adr, write_data, data_mem_out);
  instruction_memory im(pc, instr);
  
  assign mem_read = ~instr[27] & instr[26] & instr[20];
  
  mux_2_x_1 #(32) mux0(keyboard_out, data_mem_out, mem_enb & mem_read, read_data);
  flip_flop_D_IO #(32) ff0(clk, ~reset, sprite_enbX & mem_write, write_data, sprite_inX);
  flip_flop_D_IO #(32) ff1(clk, ~reset, sprite_enbY & mem_write, write_data, sprite_inY);
  
  processor CPU(clk, ~reset, instr, read_data, pc, data_adr, write_data, mem_write);
  
  assign ff_out = sprite_inX[5:0];
  VGA vga(clk, reset, sprite_inX[9:0], sprite_inY[9:0], vga_hs, vga_vs, vga_blank_n, clockVGA, red, green, blue);

						
endmodule 