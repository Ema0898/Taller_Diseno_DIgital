module nBitCounter_sc_testbench();
  parameter N = 6;

  logic clock, reset;
  logic[N-1:0] nextState0,nextState1, nextState2;
	
  //DUT initialization
  nBitCounter #(2) DUT(clock, reset, nextState0);
  nBitCounter #(4) DUT1(clock, reset, nextState1);
  nBitCounter #(6) DUT2(clock, reset, nextState2);
	
  initial begin
    clock = 0; reset = 1; #10;
	 assert (nextState0 === 000000) else $error("Reset failed on 2 bit counter");
	 assert (nextState1 === 000000) else $error("Reset failed on 4 bit counter");
	 assert (nextState2 === 000000) else $error("Reset failed on 6 bit counter");
    clock = 1; reset = 0; #10;	 
	 assert (nextState0 === 000001) else $error("Count failed on 2 bit counter");
	 assert (nextState1 === 000001) else $error("Count failed on 4 bit counter");
	 assert (nextState2 === 000001) else $error("Count failed on 6 bit counter");
    clock = 0; reset = 0; #10;
    clock = 1; reset = 1; #10;	 
	 assert (nextState0 === 000000) else $error("Reset failed on 2 bit counter");
	 assert (nextState1 === 000000) else $error("Reset failed on 4 bit counter");
	 assert (nextState2 === 000000) else $error("Reset failed on 6 bit counter");
	 clock = 0; reset = 0; #10;
    clock = 1; reset = 1; #10;	 
	 assert (nextState0 === 000000) else $error("Reset failed on 2 bit counter");
	 assert (nextState1 === 000000) else $error("Reset failed on 4 bit counter");
	 assert (nextState2 === 000000) else $error("Reset failed on 6 bit counter");
	 clock = 0; reset = 0; #10;
    clock = 1; reset = 0; #10;	 
	 assert (nextState0 === 000001) else $error("Count failed on 2 bit counter");
	 assert (nextState1 === 000001) else $error("Count failed on 4 bit counter");
	 assert (nextState2 === 000001) else $error("Count failed on 6 bit counter");
	 clock = 0; reset = 0; #10;
    clock = 1; reset = 0; #10;
	 assert (nextState0 === 000010) else $error("Count failed on 2 bit counter"); 
	 assert (nextState1 === 000010) else $error("Count failed on 4 bit counter"); 
	 assert (nextState2 === 000010) else $error("Count failed on 6 bit counter");	
	 $display("NS0 = %b, NS1 = %b, NS2 = %b\n", nextState0, nextState1, nextState2);
	 clock = 0; reset = 0; #10;
    clock = 1; reset = 0; #10;
	 clock = 0; reset = 0; #10;
    clock = 1; reset = 0; #10;	
	 assert (nextState0 === 000000) else $error("Count failed on 2 bit counter"); 
	 assert (nextState1 === 000100) else $error("Count failed on 4 bit counter"); 
	 assert (nextState2 === 000100) else $error("Count failed on 6 bit counter");	  
	 $display("NS0 = %b, NS1 = %b, NS2 = %b\n", nextState0, nextState1, nextState2);
  end
endmodule
