module control_unit(input logic clk, reset, 
						  input logic sh_imm,
						  input logic [1:0] sh,
						  input logic [3:0] alu_flags,
						  input logic [31:12] instr,
						  output logic reg_write, alu_src, mem_write, mem_reg, pc_src, sh_src, mov_src, mvn_src,
						  output logic [1:0] reg_src, imm_src,
						  output logic [3:0] alu_control);
						  
  logic [1:0] flag_write;
  logic pc_src_p, reg_write_p, mem_write_p, no_write;
  
  decoder_cu decoder(sh_imm, instr[27:26], sh, instr[25:20], instr[15:12], pc_src_p, reg_write_p, mem_write_p,
							mem_reg, alu_src, no_write, sh_src, mov_src, mvn_src, flag_write, imm_src, reg_src, alu_control);
							
  cond_logic_cu cl(clk, reset, pc_src_p, reg_write_p, mem_write_p, no_write, flag_write, instr[31:28], 
						 alu_flags, pc_src, reg_write, mem_write);

endmodule 