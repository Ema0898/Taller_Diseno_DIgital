module random(input logic clk, reset, output logic [1:0] zone, output logic [9:0] posX, posY, limitX);

	logic [1:0] randomNumber = 2'b00;
	
	decoPositionX decoX(randomNumber, posX);
	decoPositionY decoY(randomNumber, posY);
	decoLimitX decoX2(randomNumber, limitX);
	
	assign zone = randomNumber;

endmodule 