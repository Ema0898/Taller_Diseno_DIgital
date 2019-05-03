module PixelGenerator(input logic [9:0] posX, posY, pixelX, pixelY, input logic [1:0] selec, counterSelect, input logic [2:0] state, output logic [23:0] RGB);

	logic [23:0] spriteColor, totalBackground, background, no_final_RGB, wordColor;
	logic mux0Selec, mux2Selec, mux3Selec, spriteActive, lineActive, lineActiveX, lineActiveY, wordActive;
   logic sq0X, sq1X, sq2X, sq3X, sq0Y, sq1Y, sq2Y, sq3Y, sqMuxOut;
	
	logic [23:0] background1 = 24'b101010111111111111111011;
	logic [23:0] background2 = 24'b1110000000100101101101;
	logic [23:0] lineColor =  24'b000000000000000000000000;
	
	logic [9:0] wordY = 256;
	logic [9:0] wordX = 420;	
		
	Sprite sprite(posX, posY, pixelX, pixelY, selec, spriteColor, spriteActive);
	wordSprite word(wordY, wordX, pixelX, pixelY, wordColor, wordActive);
	
	assign sq0X = ((pixelY >= 0) & (pixelY <= 320));
	assign sq0Y = ((pixelX >= 0) & (pixelX <= 240));
	
	assign sq1X = ((pixelY >= 325) & (pixelY <= 640));
	assign sq1Y = ((pixelX >= 0) & (pixelX < 245));
	
	assign sq2X = ((pixelY >= 0) & (pixelY <= 320));
	assign sq2Y = ((pixelX >= 245) & (pixelX <= 480));
	
	assign sq3X = ((pixelY >= 325) & (pixelY <= 640));
	assign sq3Y = ((pixelX >= 245) & (pixelX <= 480));
	
	assign lineActiveY = ((pixelX > 240) & (pixelX < 245));
	assign lineActiveX = ((pixelY > 320) & (pixelY < 325));
	
	assign lineActive = lineActiveX | lineActiveY; // SI se debe dibujar las lineas
	assign mux0Selec = ((~state[2] & ~state[1] & state[0]) | (~state[2] & state[1] & ~state[0])); // estado 01 o 10 de la fsm
	assign mux2Selec = (spriteActive & ((~state[2] & ~state[1] & ~state[0]) | (~state[2] & state[1] & state[0]) | (state[2] & ~state[1] & ~state[0])));
	assign mux3Selec = (wordActive & (~state[2] & state[1] & state[0]));
	
	mux_4_x_1 #(1) sqMux(sq0X & sq0Y, sq1X & sq1Y, sq2X & sq2Y, sq3X & sq3Y, counterSelect, sqMuxOut);
	mux_2_x_1 #(24) mux0(background1, background2, mux0Selec & sqMuxOut, background);	
	mux_2_x_1 #(24) mux1(background, lineColor, lineActive, totalBackground);	
	mux_2_x_1 #(24) mux2(totalBackground, spriteColor, mux2Selec, no_final_RGB);
	mux_2_x_1 #(24) mux3(no_final_RGB, wordColor, mux3Selec, RGB);

endmodule 