module control_unit_test();

  logic clk, reset, reg_write, alu_src, mem_write, mem_reg, pc_src, sh_imm, sh_src;
  logic [1:0] sh, reg_src, imm_src;
  logic [3:0] alu_flags, alu_control;
  logic [31:12] instruction;
  
  control_unit DUT(clk, reset, sh_imm, sh, alu_flags, instruction, reg_write, alu_src, mem_write, mem_reg, 
								pc_src, sh_src, reg_src, imm_src, alu_control);
								
  initial begin
    reset = 1; sh_imm = 1'b0; sh = 2'b00; instruction = 20'hE3A01; alu_flags = 4'b0000; #10
	 #1 $display("clk = %b, reset = %b, sh_imm = %b, sh = %b, alu_flags = %b, instruction = %b, reg_write = %b, alu_src = %b, mem_write = %b, mem_reg = %b, pc_src = %b ,sh_src = %b, reg_src = %b, imm_src = %b, alu_control = %b",
					 clk, reset, sh_imm, sh, alu_flags, instruction, reg_write, alu_src, mem_write, mem_reg, pc_src,
					 sh_src, reg_src, imm_src, alu_control); 
					 
	 reset = 0; sh_imm = 1'b0; sh = 2'b00; instruction = 20'hE3A01; alu_flags = 4'b0000; #10
	 #1 $display("clk = %b, reset = %b, sh_imm = %b, sh = %b, alu_flags = %b, instruction = %b, reg_write = %b, alu_src = %b, mem_write = %b, mem_reg = %b, pc_src = %b, sh_src = %b, reg_src = %b, imm_src = %b, alu_control = %b",
					 clk, reset, sh_imm, sh, alu_flags, instruction, reg_write, alu_src, mem_write, mem_reg, pc_src,
					 sh_src, reg_src, imm_src, alu_control); 
					 
  end
  
  always begin
		clk <= 1; #5; clk <= 0; #5;
  end
	 
endmodule 