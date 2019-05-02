module top(input logic [3:0] button, input logic clk, reset, seg3, output logic[2:0] out);

	logic low_clock, btn, enable, guess, rst, seg32;
	logic [2:0] outCounter;
	
	assign btn = |(button);
	
	assign enable = ((&out) | ~(&out));
	assign rst = ((~out[1] & out[0]) | ((~out[0] & out[1])) | out[2]);
	
	frequency_divider divider(clk, reset, low_clock);
	counter counter(low_clock, rst, outCounter);
	
	assign seg32 = (outCounter == 3);	
	assign guess = (button[3] == 'b1) & (button[2] == 'b0) & (button[1] == 'b0) & (button[0] == 'b0);
	
	fsm fsm(seg32, btn, guess, clk, reset, out);
	
endmodule 