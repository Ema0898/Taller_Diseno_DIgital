module four_bits_adder(input logic[3:0] A,B, input logic Cin, output logic[3:0] O, output logic Co);

	logic c1, c2, c3;

	full_adder FA1(B[0], A[0], Cin, O[0],c1);
	full_adder FA2(B[1], A[1], c1, O[1],c2);
	full_adder FA3(B[2], A[2], c2, O[2],c3);
	full_adder FA4(B[3], A[3], c3, O[3],Co);

endmodule