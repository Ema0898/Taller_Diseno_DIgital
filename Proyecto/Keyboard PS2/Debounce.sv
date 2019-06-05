module Debounce(input clk, input trigger_in, output reg pulse_out);
	logic delay;

	//Indica si una tecla es precionada o no
	always_ff @ (posedge clk)
	begin
		if (trigger_in && !delay) pulse_out <= 1'b1;
		else pulse_out <= 1'b0;
		delay <= trigger_in;
	end 
endmodule

