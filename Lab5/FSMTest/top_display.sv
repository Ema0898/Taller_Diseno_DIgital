module top_display(input logic [3:0] button, input logic clk, reset, seg3, output logic[6:0] out);

	logic [1:0] fsm_out;
	logic [3:0] btn;
	
	assign btn[3] = ~button[3];
	assign btn[2] = ~button[2];
	assign btn[1] = ~button[1];
	assign btn[0] = ~button[0];

	top top(btn, clk, reset, seg3, fsm_out);
	
	DecoSeg deco(fsm_out, out);

endmodule 