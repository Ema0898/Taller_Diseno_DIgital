module data_path(input logic clk, rst,
					  input logic pc_src, reg_write,
					  input logic [3:0] alu_control,
					  input logic [31:0] instruction, read_data,
					  output logic [3:0] alu_flags,
					  output logic [31:0] pc, direction, write_data);
					  
  logic carry_out, carry_out1;
  logic [31:0] rd1, rd2, pc_mux, pc_plus_4, pc_plus_8, imm_ext;
  
  adder #(32) adder1(pc, 32'b00000000000000000000000000000100, 1'b0, pc_plus_4, carry_out);
  adder #(32) adder2(pc_plus_4, 32'b00000000000000000000000000000100, 1'b0, pc_plus_8, carry_out1);
  
  mux_2_x_1 #(32) mux0(pc_plus_4, read_data, pc_src, pc_mux);
  
  flip_flop_D #(32) ff(clk, rst, 1'b1, pc_mux, pc);  
  
  register_file rf(clk, rst, reg_write, instruction[19:16], 4'b0, instruction[15:12], read_data, pc_plus_8, rd1, rd2);
  
  extend ext(instruction[11:0], imm_ext);
  
  ALU #(32) alu(rd1, imm_ext, alu_control, direction, alu_flags);

endmodule 

