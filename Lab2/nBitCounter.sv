module nBitCounter
	#(parameter N = 16)
	(input logic clock, reset, output logic[N-1:0] nextState);
	
	always_ff @(posedge clock, posedge reset)
		if(reset) nextState <= 6'b0;
		else 		 nextState = nextState + 1;
endmodule