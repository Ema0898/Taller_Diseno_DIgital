module fsm_top(input logic button, input logic clk, reset, guess, output logic[2:0] out);

	logic low_clock, rst, seg3;
	logic [2:0] outCounter;
	
	assign rst = ((~out[1] & out[0] & ~out[2]) | ((~out[0] & out[1] & ~out[2])) | (out[2] & ~out[1] & out[0]));
	
	frequency_divider_fsm divider(clk, reset, low_clock);
	counter_fsm counter(low_clock, rst, outCounter);
	
	assign seg3 = (outCounter == 3);		
	
	fsm fsm(seg3, button, guess, clk, reset, out);
	
endmodule 
