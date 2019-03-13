module flag_module	
	#(parameter N = 4)
	(input a, b, msb_sum, carry_out, input logic [N - 1 : 0] r, input logic [3:0] s, output logic [3:0] z);
	
	assign z[3] = r[N - 1];
	assign z[2] = &(~r);
	assign z[1] = ~s[3] & carry_out & ~s[2];
	assign z[0] = ~s[3] & (a ^ msb_sum) & (~(a ^ b ^ s[0])) & ~s[2];
	
endmodule 