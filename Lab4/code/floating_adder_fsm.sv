module floating_adder_fsm(input logic [32:0] a, b, input logic [1:0] conditions, input logic clk, reset, output logic [32:0] z, output logic [1:0] state);
	
	logic [1:0] state_fsm;
	logic [3:0] controller;
	
	logic [8:0] exp_out;
	logic [23:0] shift;
	logic [24:0] add;	
	logic [32:0] sum;	

	fsm fsm1(conditions, clk, reset, state_fsm);
	decoFSM deco(state_fsm, controller);
	floating_point_adder adder(a, b, controller, ~clk, exp_out, shift, add, sum);
	
	mux_4_x_1 #(33) mux1(exp_out, shift, add, sum, state_fsm, z);
	
	assign state = state_fsm;

endmodule 