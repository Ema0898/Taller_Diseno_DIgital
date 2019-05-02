module fsm_top(input logic [3:0] button, input logic clk, reset, guess, output logic[2:0] out);

	logic low_clock, btn, rst, seg3;
	logic [2:0] outCounter;
	
	assign btn = |(button);
	
	assign rst = ((~out[1] & out[0]) | ((~out[0] & out[1])) | out[2]);
	
	frequency_divider_fsm divider(clk, reset, low_clock);
	counter_fsm counter(low_clock, rst, outCounter);
	
	assign seg3 = (outCounter == 3);		
	
	fsm fsm(seg3, btn, guess, clk, reset, out);
	
endmodule 
