module instruction_memory(input logic [31:0] a,
								  output logic [31:0] rd);								  
								  
  logic [31:0] memory [100:0];
  
  assign memory[0] = 32'hE3A00078;
assign memory[1] = 32'hE3A01E4B;
assign memory[2] = 32'hE3A03000;
assign memory[3] = 32'hE3A04D05;
assign memory[4] = 32'hE3A05000;
assign memory[5] = 32'hE30061C2;
assign memory[6] = 32'hE3A07079;
assign memory[7] = 32'hE5804000;
assign memory[8] = 32'hE5876000;
assign memory[9] = 32'hEA000013;
assign memory[10] = 32'hE2844001;
assign memory[11] = 32'hE5804000;
assign memory[12] = 32'hE3A03000;
assign memory[13] = 32'hE3A05000;
assign memory[14] = 32'hEA00001A;
assign memory[15] = 32'hE2444001;
assign memory[16] = 32'hE5804000;
assign memory[17] = 32'hE3A03000;
assign memory[18] = 32'hE3A05000;
assign memory[19] = 32'hEA000015;
assign memory[20] = 32'hE2866001;
assign memory[21] = 32'hE5876000;
assign memory[22] = 32'hE3A03000;
assign memory[23] = 32'hE3A05000;
assign memory[24] = 32'hEA000010;
assign memory[25] = 32'hE2466001;
assign memory[26] = 32'hE5876000;
assign memory[27] = 32'hE3A03000;
assign memory[28] = 32'hE3A05000;
assign memory[29] = 32'hEA00000B;
assign memory[30] = 32'hE5902000;
assign memory[31] = 32'hE352006B;
assign memory[32] = 32'h0AFFFFED;
assign memory[33] = 32'hE3520074;
assign memory[34] = 32'h0AFFFFE6;
assign memory[35] = 32'hE3520075;
assign memory[36] = 32'h0AFFFFF3;
assign memory[37] = 32'hE3520072;
assign memory[38] = 32'h0AFFFFEC;
assign memory[39] = 32'hE3A03000;
assign memory[40] = 32'hE3A05000;
assign memory[41] = 32'hEAFFFFFF;
assign memory[42] = 32'hE1530001;
assign memory[43] = 32'h0A000001;
assign memory[44] = 32'hE2833001;
assign memory[45] = 32'hEAFFFFFB;
assign memory[46] = 32'hE355004B;
assign memory[47] = 32'h0AFFFFED;
assign memory[48] = 32'hE2855001;
assign memory[49] = 32'hE3A03000;
assign memory[50] = 32'hEAFFFFF6;
  

//  
////  //GAME
////  
//	assign memory[0] = 32'hE3A00078;
//	assign memory[1] = 32'hE3A01E4B;
//	assign memory[2] = 32'hE3A03000;
//	assign memory[3] = 32'hE3A04000; //000 
//	assign memory[4] = 32'hE3A05000;
//	assign memory[5] = 32'hE3006000; //000
//	assign memory[6] = 32'hE3A07079;
//	assign memory[7] = 32'hEA000013;
//	assign memory[8] = 32'hE2844001;
//	assign memory[9] = 32'hE5804000;
//	assign memory[10] = 32'hE3A03000;
//	assign memory[11] = 32'hE3A05000;
//	assign memory[12] = 32'hEA00001A;
//	assign memory[13] = 32'hE2444001;
//	assign memory[14] = 32'hE5804000;
//	assign memory[15] = 32'hE3A03000;
//	assign memory[16] = 32'hE3A05000;
//	assign memory[17] = 32'hEA000015;
//	assign memory[18] = 32'hE2866001;
//	assign memory[19] = 32'hE5876000;
//	assign memory[20] = 32'hE3A03000;
//	assign memory[21] = 32'hE3A05000;
//	assign memory[22] = 32'hEA000010;
//	assign memory[23] = 32'hE2466001;
//	assign memory[24] = 32'hE5876000;
//	assign memory[25] = 32'hE3A03000;
//	assign memory[26] = 32'hE3A05000;
//	assign memory[27] = 32'hEA00000B;
//	assign memory[28] = 32'hE5902000;
//	assign memory[29] = 32'hE352006B;
//	assign memory[30] = 32'h0AFFFFED;
//	assign memory[31] = 32'hE3520074;
//	assign memory[32] = 32'h0AFFFFE6;
//	assign memory[33] = 32'hE3520075;
//	assign memory[34] = 32'h0AFFFFF3;
//	assign memory[35] = 32'hE3520072;
//	assign memory[36] = 32'h0AFFFFEC;
//	assign memory[37] = 32'hE3A03000;
//	assign memory[38] = 32'hE3A05000;
//	assign memory[39] = 32'hEAFFFFFF;
//	assign memory[40] = 32'hE1530001;
//	assign memory[41] = 32'h0A000001;
//	assign memory[42] = 32'hE2833001;
//	assign memory[43] = 32'hEAFFFFFB;
//	assign memory[44] = 32'hE355004B;
//	assign memory[45] = 32'h0AFFFFED;
//	assign memory[46] = 32'hE2855001;
//	assign memory[47] = 32'hE3A03000;
//	assign memory[48] = 32'hEAFFFFF6;
  
  //KEYBOARD X Y
//  assign memory[0] = 32'hE3A00078;
//  assign memory[1] = 32'hE3A02079;
//  assign memory[2] = 32'hE3A030C8;
//  assign memory[3] = 32'hE5901000;
//  assign memory[4] = 32'hE5801000;
//  assign memory[5] = 32'hE5823000;
  
  // KEYBOARD
//  assign memory[0] = 32'hE3A00078;
//  assign memory[1] = 32'hE5901000;
//  assign memory[2] = 32'hE5801000;
  
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