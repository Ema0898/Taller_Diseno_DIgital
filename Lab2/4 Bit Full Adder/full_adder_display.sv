module full_adder_display(input logic[3:0] A,B, input logic Cin, output logic[6:0] seg0, seg1);

	logic[3:0] out, CarryOut;
	
	four_bits_adder(A, B, Cin, out, CarryOut);

	DecoSeg deco0(out, seg0);
	DecoSeg deco1(CarryOut, seg1);
	
endmodule
