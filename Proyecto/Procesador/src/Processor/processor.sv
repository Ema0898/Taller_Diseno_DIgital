module processor(input logic clk,
					  input logic rst,
					  input logic [31:0] instruction, read_data,
					  output logic [31:0] pc, direction, write_data,
					  output logic mem_write);
					  
  logic [3:0] alu_flags, alu_control;
  logic [1:0] reg_src, imm_src;
  logic reg_write, alu_src, mem_reg, pc_src, sh_src;
  
  control_unit cu(clk, rst, instruction[4], instruction[6:5], alu_flags, instruction[31:12], reg_write, alu_src, mem_write,
						mem_reg, pc_src, sh_src, reg_src, imm_src, alu_control);
  
  data_path path(clk, rst, pc_src, reg_write, mem_reg, alu_src, sh_src, imm_src, reg_src, alu_control, 
					  instruction, read_data, alu_flags, pc, direction, write_data);
  
endmodule 