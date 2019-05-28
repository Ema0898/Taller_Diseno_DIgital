module instruction_memory(input logic [31:0] a,
								  output logic [31:0] rd);								  
								  
  logic [31:0] memory [4:0];
  
  assign memory[0] = 32'hE5949010;
  assign memory[1] = 32'hE5989010;
  assign memory[2] = 32'hE5958010;
  assign memory[3] = 32'hE3984015;
  
  assign rd = memory[a];
				  
endmodule 