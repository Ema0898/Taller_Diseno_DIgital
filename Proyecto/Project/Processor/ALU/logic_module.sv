module logic_module
	#(parameter N = 4)
	(input logic [N - 1 : 0] a, b, output logic [N : 1 - 0] d0, d1, d2, d3, d4, d5, d6);
	
	assign d0 = a & b;
	assign d1 = a | b;
	assign d2 = a ^ b;
	assign d3 = ~a;
	
	asl #(N) shift_left_a (a, b, d4);
	lsr #(N) shift_rigth_a (a, b, d5);
	ror #(N) rotate_right(a, b[4:0], d6);
	
	
endmodule
