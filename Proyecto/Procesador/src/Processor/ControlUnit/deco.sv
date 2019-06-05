module deco(input logic [3:0] cmd, input logic [1:0] sh, op, output logic [3:0] alu_control);

	logic [3:0] deco0_w, deco1_w, mux0_w;
	
	logic shift;
	assign shift = cmd[3] & cmd[2] & ~cmd[1] & cmd[0];
	logic dp;
   assign dp = ~op[1] & ~op[0];
	
	alu_deco deco0(cmd, deco0_w);
	alu_shift_deco deco1(sh, deco1_w);
	
	mux_2_x_1 #(4) mux0(deco0_w, deco1_w, shift, mux0_w);
	mux_2_x_1 #(4) mux1(4'b0, mux0_w, dp, alu_control);

endmodule 