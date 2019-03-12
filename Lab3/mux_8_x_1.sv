module mux_8_x_1
	#(parameter N = 4)
	(input logic [N - 1 :0] d0, d1, d2, d3, d4, d5, d6, d7, input logic [2:0] s, output logic [N - 1 : 0] z);
	
	logic [N - 1 :0] m0, m1, m2, m3, m4, m5;
	
	// bit menos significativo del seleccionador
	mux_2_x_1 #(N) mux0(d0, d1, s[0], m0);
	mux_2_x_1 #(N) mux1(d2, d3, s[0], m1);
	mux_2_x_1 #(N) mux2(d4, d5, s[0], m2);
	mux_2_x_1 #(N) mux3(d6, d7, s[0], m3);
	
	// siguiente bit del seleccionador
	mux_2_x_1 #(N) mux4(m0, m1, s[1], m4);
	mux_2_x_1 #(N) mux5(m2, m3, s[1], m5);
	
	// bit mas significativo
	mux_2_x_1 #(N) mux6(m4, m5, s[2], z);
	
	
endmodule
