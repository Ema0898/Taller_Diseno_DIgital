module extend(input logic [23:0] imm, input logic [1:0] imm_src,
				  output logic [31:0] imm_ext);
				  
  logic [31:0] imm_dp, imm_j, imm_mem, imm_dp_0, imm_dp_0_ror;

  assign imm_dp_0[31:8] = 24'b0;
  assign imm_dp_0[7:0] = imm[7:0];  
  assign imm_j = {{6{imm[23]}}, imm[23:0], 2'b00};
  assign imm_mem[31:12] = 20'b0;
  assign imm_mem[11:0] = imm[11:0];
  
  ror #(32) rotate(imm_dp_0, {1'b0, imm[11:8]}, imm_dp_0_ror); 
  
  mux_4_x_1 #(32) mux1(imm_dp_0_ror, imm_mem, imm_j, 32'b0, imm_src, imm_ext);
				 
endmodule 