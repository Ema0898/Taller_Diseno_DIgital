module alu_and_register 
	#(parameter N = 32)
	(input logic [N - 1 : 0] in, input logic [3:0] s, input clk, output logic [N - 1 : 0] z, output logic [3:0] flags);
	
	logic [N - 1 : 0] reg1_out, alu_out;
	
	flip_flop_D #(N) flip_flop1 (clk, in, reg1_out);
	
	ALU #(N) alu (reg1_out, reg1_out, s, alu_out, flags);
	
	flip_flop_D #(N) flip_flop2 (~clk, alu_out, z);
	
	
	
endmodule 