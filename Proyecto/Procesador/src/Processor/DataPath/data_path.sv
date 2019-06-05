module data_path(input logic clk, rst,
					  input logic pc_src, reg_write, mem_reg, alu_src, sh_src, mov_src, mvn_src,
					  input logic [1:0] imm_src, reg_src,
					  input logic [3:0] alu_control,
					  input logic [31:0] instruction, read_data,
					  output logic [3:0] alu_flags,
					  output logic [31:0] pc, direction, write_data);
					  
  logic carry_out, carry_out1;
  logic [3:0] a1, a2, a1_p, a2_p;
  logic [31:0] rd1, rd2, pc_mux, pc_plus_4, pc_plus_8, imm_ext, read_data_mux, rd2_mux, rd1_pp, rd1_p;
  
  adder #(32) adder1(pc, 32'h00000004, 1'b0, pc_plus_4, carry_out);
  adder #(32) adder2(pc_plus_4, 32'h00000004, 1'b0, pc_plus_8, carry_out1);
  
  mux_2_x_1 #(32) mux0(pc_plus_4, read_data_mux, pc_src, pc_mux);
  mux_2_x_1 #(32) mux1(direction, read_data, mem_reg, read_data_mux);
  
  flip_flop_D #(32) ff(clk, rst, 1'b1, pc_mux, pc);  
  
  mux_2_x_1 #(4) mux_a1_p(instruction[19:16], 4'b1111, reg_src[0], a1_p);
  mux_2_x_1 #(4) mux_a2_p(instruction[3:0], instruction[15:12], reg_src[1], a2_p);
  
  mux_2_x_1 #(4) mux_a1(a1_p, instruction[3:0], sh_src, a1);
  mux_2_x_1 #(4) mux_a2(a2_p, instruction[11:8], sh_src, a2);
  
  register_file rf(clk, rst, reg_write, a1, a2, instruction[15:12], read_data_mux, pc_plus_8, rd1, rd2);
  
  extend ext(instruction[23:0], imm_src, imm_ext);  
  
  mux_2_x_1 #(32) mux_rd2(rd2, imm_ext, alu_src, rd2_mux);
  
  mux_2_x_1 #(32) mux_rd1_p(rd1, 32'b0, mov_src, rd1_p);
  mux_2_x_1 #(32) mux_rd_pp(rd1_p, rd2_mux, mvn_src, rd1_pp);
  
  ALU #(32) alu(rd1_pp, rd2_mux, alu_control, direction, alu_flags);
  
  assign write_data = rd2;

endmodule 

