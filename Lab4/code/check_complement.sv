module check_complement(input logic[32:0] a, b, output logic[32:0] a_checked, b_checked);

	logic [22:0] a_mantissa, b_mantissa, a_complement, b_complement, a_out, b_out;
	
	assign a_mantissa = a[22:0];
	assign b_mantissa = b[22:0];
	
	adder #(23) adder1(~a_mantissa, 0, 1, a_complement);
	adder #(23) adder2(~a_mantissa, 0, 1, b_complement);

	mux_2_x_1 #(23) mux1(a_mantissa, a_complement, a[32], a_out);
	mux_2_x_1 #(23) mux2(b_mantissa, b_complement, b[32], b_out);

	assign a_checked[32:23] = a[32:23];
	assign b_checked[32:23] = b[32:23];
	
	assign a_checked[22:0] = a_out;
	assign b_checked[22:0] = b_out;
	
endmodule 