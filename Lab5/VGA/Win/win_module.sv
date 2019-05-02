module win_module(input logic [3:0] buttons, input logic [1:0] randomPos,  output logic win);

		logic [1:0] zone;
		
		decoButtons deco(buttons, zone);		
		assign win = (zone == randomPos);
		
endmodule 