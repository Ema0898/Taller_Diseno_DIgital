module decoder_cu(input logic sh_imm,
						input logic [1:0] op, sh,
						input logic [5:0] funct,
						input logic [3:0] rd,
						output logic pc_src, reg_write, mem_write, mem_reg, alu_src, no_write, sh_src,
						output logic [1:0] flag_write, imm_src, reg_src,
						output logic [3:0] alu_control);
						
  logic mem, rd_15, dp, branch;
  logic [1:0] flag_write_previous;
  
  assign mem = ~op[1] & op[0];
  assign rd_15 = rd[3] & rd[2] & rd[1] & rd[0];
  assign dp = ~op[1] & ~op[0];
  assign branch = op[1] & ~op[0];  
						
  assign mem_reg = mem & funct[0];
  assign mem_write = mem & ~funct[0];
  assign alu_src = (~(dp & ~funct[5])) | ((funct[4] & funct[3] & ~funct[2] & funct[1]) & ~sh_imm & dp);
  assign reg_write = dp | mem_reg;
  assign pc_src = branch | (rd_15 & reg_write);
  assign imm_src = op;
  assign reg_src[0] = branch;
  assign reg_src[1] = mem_write;
  
  assign flag_write_previous[1] = funct[0];
  assign flag_write_previous[0] = funct[0] & ~(alu_control[3]); 
  
  mux_2_x_1 #(2) mux_flags(2'b0, flag_write_previous, dp, flag_write);
  
  deco deco0(funct[4:1], sh, op, alu_control);
  
  assign no_write = ((funct[4] & ~funct[3] & funct[2] & ~funct[1]) | (funct[4] & ~funct[3] & funct[2] & funct[1])) & dp;
  assign sh_src = (funct[4] & funct[3] & ~funct[2] & funct[1]) & dp;

endmodule 