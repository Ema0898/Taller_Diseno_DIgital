module animation(input logic clockVGA, low_clock, reset, refreshDraw, input logic [9:0] initPos, limitX, input logic [2:0] state,
						output logic [1:0] currentSprite, output logic [9:0] currentPos);

	logic [9:0] move;
	logic enb, rst;
	
	assign enb = ((~state[2] & state[1] & state[0]) | (state[2] & ~state[1] & ~state[0])) & refreshDraw;
	assign rst = ((((currentPos > limitX)) & enb) | (reset));

	counter count(low_clock, reset, refreshDraw, currentSprite);
	moveCounter moveCnt(clockVGA, rst, enb, move);	
	
	assign currentPos = move + initPos;	

endmodule 
