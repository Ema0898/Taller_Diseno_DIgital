module animation(input logic low_clock, reset, refreshDraw,
								output logic [1:0] currentSprite);

	counter count(low_clock, reset, refreshDraw, currentSprite);

endmodule 
