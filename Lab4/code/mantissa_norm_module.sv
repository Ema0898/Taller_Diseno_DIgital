module mantissa_norm_module(input logic [24:0] mantissa, input logic [8:0] fexp, input logic sign_bit, output logic [32:0] result);

	logic [8:0] m1, add;
	logic [24:0] m2, shift;
	logic selecc, c_o;
	
	// Circuito que decide si se debe corregir la mantisa y el exponente
	assign selecc = mantissa[24] & ~mantissa[23];	
	
	// Decide si el exponente final debe ser corregido
	adder #(9) adder(fexp, 0, 1, add, c_o);
	mux_2_x_1 #(9) mux1(fexp, add, selecc, m1);
	
	// Decide si la mantisa final debe ser corregida
	assign shift = mantissa >> 'b000000001;
	mux_2_x_1 #(25) mux2(mantissa, shift, selecc, m2);
	
	// Toma los datos necesarios de la mantisa
	assign result[32] = sign_bit;
	assign result[31:23] = m1;
	assign result[22:0] = m2[22:0];

endmodule 