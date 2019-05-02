module rng (input clock, signal, output logic[1:0] zone);

	logic Q0, Q1, Q2, xorOut, check;
	
	assign xorOut = ~(Q2 ^ Q0);
	
	flip_flop_D_ENL #(2) ffD2 (clock, signal, xorOut, Q2);
	flip_flop_D_ENL #(2) ffD1 (clock, signal, Q2, Q1);
	flip_flop_D_ENL #(2) ffD0 (clock, signal, Q1, Q0);
		
	assign zone[0] = Q2;
	assign zone[1] = Q1;

endmodule 