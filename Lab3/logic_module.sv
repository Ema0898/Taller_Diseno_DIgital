module logic_module
	#(parameter N = 4)
	(input logic [N - 1 : 0] a, b, output logic [N : 1 - 0] d0, d1, d2, d3, d4, d5, d6, d7);
	
	assign d0 = a & b;
	assign d1 = a | b;
	assign d2 = a ^ b;
	assign d3 = ~a;
	
	asl #(N) shift_left_a (a, d4);
	asl #(N) shift_left_b (b, d5);
	lsr #(N) shift_rigth_a (a, d6);
	lsr #(N) shift_rigth_b (b, d7);
	
	
endmodule
