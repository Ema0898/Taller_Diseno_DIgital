module add_sub_module
	#(parameter N = 4)
	(input [N - 1 : 0] a, b, input logic [1:0] s, output [N - 1 : 0] z, output carry_out);
	
	logic [N - 1 : 0] m0, m1, m2, _m1;
	
	mux_2_x_1 #(N) mux0(a, b, s[0], m0);
	mux_2_x_1 #(N) mux1(b, a, s[0], m1);
	
	assign _m1 = ~m1;
	
	mux_2_x_1 #(N) mux2(m1, _m1, s[1], m2);	
	adder #(N) fa(m0, m2, s[1], z, carry_out);
	
endmodule
