module lsr
	(input logic [23:0] a, input logic [8:0] b, output logic [23:0] z);
	
	assign z = a >> b;
	
endmodule
