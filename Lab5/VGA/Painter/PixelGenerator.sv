module PixelGenerator(input logic [9:0] posX, posY, pixelX, pixelY, input logic [1:0] selec, input logic [2:0] state, output logic [23:0] RGB);

	logic [23:0] spriteColor, totalBackground, background, no_final_RGB, wordColor;
	logic mux0Selec, mux2Selec, mux3Selec, spriteActive, lineActive, lineActiveX, lineActiveY, wordActive;	
	
	logic [23:0] background1 = 24'b101010111111111111111011;
	logic [23:0] background2 = 24'b1110000000100101101101;
	logic [23:0] lineColor =  24'b000000000000000000000000;
	
	logic [9:0] wordY = 256;
	logic [9:0] wordX = 420;	
		
	Sprite sprite(posX, posY, pixelX, pixelY, selec, spriteColor, spriteActive);
	wordSprite word(wordY, wordX, pixelX, pixelY, wordColor, wordActive);
	
	assign lineActiveY = ((pixelX > 240) & (pixelX < 245));
	assign lineActiveX = ((pixelY > 320) & (pixelY < 325));
	
	assign lineActive = lineActiveX | lineActiveY; // SI se debe dibujar las lineas
	assign mux0Selec = ((~state[2] & ~state[1] & state[0]) | (~state[2] & state[1] & ~state[0])); // estado 01 o 10 de la fsm
	assign mux2Selec = (spriteActive & ((~state[2] & ~state[1] & ~state[0]) | (~state[2] & state[1] & state[0]) | (state[2] & ~state[1] & ~state[0])));
	assign mux3Selec = (wordActive & (~state[2] & state[1] & state[0]));
	
	mux_2_x_1 #(24) mux0(background1, background2, mux0Selec, background);	
	mux_2_x_1 #(24) mux1(background, lineColor, lineActive, totalBackground);	
	mux_2_x_1 #(24) mux2(totalBackground, spriteColor, mux2Selec, no_final_RGB);
	mux_2_x_1 #(24) mux3(no_final_RGB, wordColor, mux3Selec, RGB);

endmodule 