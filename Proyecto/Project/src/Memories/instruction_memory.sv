module instruction_memory(input logic [31:0] a,
								  output logic [31:0] rd);								  
								  
  logic [31:0] memory [100:0];
  
  // KEYBOARD
  assign memory[0] = 32'hE3A00078;
  assign memory[1] = 32'hE5901000;
  assign memory[2] = 32'hE5801000;
  
	// MOVE SPRITE
//	assign memory[0] = 32'hE3A00078;
//	assign memory[1] = 32'hE3A04000;
//	assign memory[2] = 32'hE3A01E4B;
//	assign memory[3] = 32'hE5804000;
//	assign memory[4] = 32'hE2844001;
//	assign memory[5] = 32'hE3A03000;
//	assign memory[6] = 32'hE3A05000;
//	assign memory[7] = 32'hEAFFFFFF;
//	assign memory[8] = 32'hE1530001;
//	assign memory[9] = 32'h0A000001;
//	assign memory[10] = 32'hE2833001;
//	assign memory[11] = 32'hEAFFFFFB;
//	assign memory[12] = 32'hE355004B;
//	assign memory[13] = 32'h0AFFFFF4;
//	assign memory[14] = 32'hE2855001;
//	assign memory[15] = 32'hE3A03000;
//	assign memory[16] = 32'hEAFFFFF6;
  

	 
  assign rd = memory[a[31:2]]; // word aligned
			  
endmodule 