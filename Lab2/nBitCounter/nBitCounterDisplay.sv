module nBitCounterDisplay(input logic clock, reset,  output logic[6:0] seg0);

	logic[3:0] nextState;
	
	nBitCounter #(3) (clock, reset, nextState);

	DecoSeg deco0(nextState, seg0);
	
endmodule

