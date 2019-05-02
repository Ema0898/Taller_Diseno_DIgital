module animation(input logic clockVGA, low_clock, reset, refreshDraw, input logic [9:0] initPos,
						output logic [1:0] currentSprite, output logic [9:0] currentPos);

	logic [9:0] move;
	
	// assign enb = state[1] & state[0] & refreshDraw;
	// assign rst = ((((currentPos > limiX)) & enb) | (reset));

	counter count(low_clock, reset, refreshDraw, currentSprite);
	moveCounter moveCnt(clockVGA, reset, refreshDraw, move);	
	
	assign currentPos = move + initPos;	

endmodule 
