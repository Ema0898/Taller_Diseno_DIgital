module mantissa_shift_module(input logic [32:0] a, b, input logic [8:0] shift, output logic [23:0] x, y, output logic [8:0] max_exp, output logic sign_bit);
//module mantissa_shift_module(input logic [23:0] a, input logic [8:0] shift, output logic [23:0] max_exp);

	logic [23:0] a_25, b_25, m1, mantissa_shift; 
	logic [32:0] higher_number;
	logic [8:0] complement, exp_shift;
	logic c_o;
	
	// Agrega el 1 implicito a la mantisa de a y de b
	assign a_25[23] = 1;
	assign b_25[23] = 1;
	
	// Toma la mantisa de a y b
	assign a_25[22:0] = a[22:0];
	assign b_25[22:0] = b[22:0];
	
	// Realiza el complemento a 2 del exponente y lo selecciona si es necesario
	adder #(9) adder (~shift, 0, 1, complement, c_o);	
	mux_2_x_1 #(9) mux0 (shift, complement, shift[8], exp_shift);		

	// Selecciona la mantisa menor y mayor respectivamente
	mux_2_x_1 #(24) mux1 (b_25, a_25, shift[8], m1);
	mux_2_x_1 #(33) mux2 (a, b, shift[8], higher_number);
	
	// Realiza lsr a la mantisa menor
	lsr lrshifter(m1, exp_shift, mantissa_shift);
	
	// Obtiene el mayor exponente
	assign max_exp = higher_number[31:23];
	
	// obtiene la mayor mantisa	
	assign x[23] = 1;
	assign x[22:0] = higher_number[22:0];
	
	assign y = mantissa_shift;
	assign sign_bit = higher_number[32];
										
endmodule 									