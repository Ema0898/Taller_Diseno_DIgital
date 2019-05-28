module extend(input logic [11:0] imm,
				  output logic [31:0] imm_ext);
				  
  assign imm_ext[31:13] = 'b0;
  assign imm_ext[12:0] = imm;
  
endmodule 