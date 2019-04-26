module PixelGenerator(input logic [9:0] posX, posY, pixelX, pixelY, output logic [23:0] RGB);

	logic [23:0] spriteColor;
	logic spriteActive;
	
	logic [23:0] background = 24'b101010111111111111111011;
	
	Sprite sprite(posX, posY, pixelX, pixelY, spriteColor, spriteActive);
	
	mux_2_x_1 #(24) mux0(background, spriteColor, spriteActive, RGB);
	

endmodule 