module ALU
	#(parameter N = 3)
	(input logic [N - 1 : 0] a, b, input logic [3:0] s, output logic [N - 1 : 0] z, output logic [3:0] flags);
	
	logic carry_out, msb_sum;
	
	combinational_circuit_module #(N) comb_circuit (a, b, s, z, carry_out, msb_sum);
	
	flag_module #(N) flag_mod (a[N - 1], b[N - 1], msb_sum, carry_out, z, s, flags);
	
endmodule 