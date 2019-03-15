module alu_and_register 
	#(parameter N = 256)
	(input logic in, input logic [3:0] s, input clk, output logic z, output logic [3:0] flags);
	
	logic [N - 1 : 0] reg1_out, alu_out, req2_out;
	
	flip_flop_D #(N) flip_flop1 (clk, in, reg1_out);
	
	ALU #(N) alu (reg1_out, reg1_out, s, alu_out, flags);
	
	flip_flop_D #(N) flip_flop2 (~clk, alu_out, req2_out);
	
	assign z = &req2_out;
	
endmodule 