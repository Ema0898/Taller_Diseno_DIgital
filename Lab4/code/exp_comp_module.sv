module exp_comp_module(input logic [32:0] a, b, output logic [8:0] result);
	
	logic c_o;
	adder #(9) adder(a[31:23], ~b[31:23], 1, result, c_o);

endmodule 