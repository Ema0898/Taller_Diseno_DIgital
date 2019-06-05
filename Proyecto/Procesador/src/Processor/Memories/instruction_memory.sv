module instruction_memory(input logic [31:0] a,
								  output logic [31:0] rd);								  
								  
  logic [31:0] memory [100:0];
  
  assign memory[0] = 32'hE04F000F;
  assign memory[1] = 32'hE2802005;
  assign memory[2] = 32'hE280300C;
  assign memory[3] =  32'hE2437009;
  assign memory[4] =  32'hE1874002;
  assign memory[5] =  32'hE0035004;
  assign memory[6] =  32'hE0855004;
  assign memory[7] =  32'hE0558007;
  assign memory[8] =  32'h0A00000C;
  assign memory[9] =  32'hE0538004;
  assign memory[10] =  32'hAA000000;
  assign memory[11] =  32'hE2805000;
  assign memory[12] =  32'hE0578002;
  assign memory[13] =  32'hB2857001;
  assign memory[14] =  32'hE0477002;
  assign memory[15] =  32'hE5837054;
  assign memory[16] =  32'hE5902060;
  assign memory[17] =  32'hE08FF000;
  assign memory[18] =  32'hE280200E;
  assign memory[19] =  32'hEA000001;
  assign memory[20] =  32'hE280200D;
  assign memory[21] =  32'hE280200A;
  assign memory[22] =  32'hE5802064;
	 
  assign rd = memory[a[31:2]]; // word aligned
			  
endmodule 