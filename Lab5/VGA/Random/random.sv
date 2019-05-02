module random(input logic clk, reset, input logic[2:0] state, output logic [1:0] zone ,output logic [9:0] posX, posY, limitX);

	logic [1:0] randomNumber;
	logic signal;
	
	assign signal = ~state[0] & state[1] & ~state[2]; 
	
	rng random(clk, signal, randomNumber);
	//assign randomNumber = 2'b01;
	
	decoPostionX decoX(randomNumber, posX);
	decoPostionY decoY(randomNumber, posY);
	decoLimitX decoX2(randomNumber, limitX);
	
	assign zone = randomNumber;

endmodule 