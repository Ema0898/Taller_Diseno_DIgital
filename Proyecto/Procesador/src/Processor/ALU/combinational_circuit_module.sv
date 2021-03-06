module combinational_circuit_module
	#(parameter N = 4)
	(input logic [N - 1 : 0] a, b, input [3:0] s, output logic [N - 1 : 0] z, output logic carry_out, msb_sum);
	
	logic [N - 1 : 0] d0, d1, d4, d5;
	logic [N - 1 : 0] d8, d9, d10, d11, d12, d13, d14;
	logic [N - 1 : 0] m0, m1;
	
	arithmetic_module #(N) arithmetic (a, b, s[0], d0, d1, d4, d5, carry_out, msb_sum);
	logic_module #(N) logic_m (a, b, d8, d9, d10, d11, d12, d13, d14);
	
	mux_8_x_1 #(N) mux8_0 (d0, d1, 0, 0, d4, d5, 0, 0, s[2:0], m0);
	mux_8_x_1 #(N) mux8_1 (d8, d9, d10, d11, d12, d13, d14, 0, s[2:0], m1);
	
	mux_2_x_1 #(N) mux2_0 (m0, m1, s[3], z);	
	
endmodule 
