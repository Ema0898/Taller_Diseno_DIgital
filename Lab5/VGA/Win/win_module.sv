module win_module(input logic [1:0] pos, input logic [1:0] randomPos,  output logic win);
		
		assign win = (pos == randomPos);
		
endmodule 