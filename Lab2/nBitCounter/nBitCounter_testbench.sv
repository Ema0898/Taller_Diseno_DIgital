module nBitCounter_testbench();

	parameter N = 6;

	logic clock, reset;
	logic[N-1:0] nextState0,nextState1, nextState2;

	//DUT initialization
	nBitCounter #(2) DUT(clock, reset, nextState0);
	nBitCounter #(4) DUT1(clock, reset, nextState1);
	nBitCounter #(6) DUT2(clock, reset, nextState2);

	initial begin
		#10 clock = 1; reset = 1; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
		#10 clock = 1; reset = 0; 
		#10 clock = 0; reset = 0; 
	end 


endmodule // and_test
