module cond_logic_cu(input logic clk, reset,
							input logic pc_src, reg_write, mem_write, no_write,
							input logic [1:0] flag_write,
							input logic [3:0] cond, alu_flags,
							output logic pc_src_p, reg_write_p, mem_write_p);
							
  logic [1:0] flag_write_p;
  logic [3:0] flags;
  logic cond_ex;
  
  flip_flop_D_cu #(2) ff0(clk, reset, flag_write_p[1], alu_flags[3:2], flags[3:2]);
  flip_flop_D_cu #(2) ff1(clk, reset, flag_write_p[0], alu_flags[1:0], flags[1:0]);
  
  cond_check cc(cond, flags, cond_ex);
  
  assign flag_write_p = flag_write & {2{cond_ex}};
  assign reg_write_p = reg_write & cond_ex & ~no_write;
  assign mem_write_p = mem_write & cond_ex;
  assign pc_src_p = pc_src & cond_ex;
							
endmodule 