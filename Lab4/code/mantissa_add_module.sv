module mantissa_add_module(input logic [23:0] a, b, input logic [8:0] exp_in, output logic [24:0] mantissa, output logic [8:0] exp_out);

	logic [24:0] x, y;
	logic c_o;
	
	// Llena los buses de 25 bits
	assign x[24] = 0;
	assign y[24] = 0;
	
	assign x[23:0] = a;
	assign y[23:0] = b;
	
	// Realiza la suma de mantisas	
	adder #(25) adder(x, y, 0, mantissa, c_o);
	
	// Asigna el mayor exponente
	assign exp_out = exp_in;

endmodule 