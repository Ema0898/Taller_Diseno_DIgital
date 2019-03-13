module ALU_display (input logic [2:0] a, b, input logic [3:0] s, output logic [6:0] z, output logic [3:0] flags);

		logic [2:0] out;
		
		ALU #(3) alu (a, b, s, out, flags);
		
		DecoSeg deco (out, z);

endmodule 
	