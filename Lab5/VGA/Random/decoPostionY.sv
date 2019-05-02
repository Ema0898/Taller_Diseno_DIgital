module decoPostionY(input logic [1:0] codedPosition, output logic [9:0] posY);

	always_comb
		case(codedPosition)		
			2'b00: 
				posY = 100;				
			2'b01:
				posY = 100; // 360	
			2'b10:
				posY = 300; // 100
			2'b11:
				posY = 300; // 360	
		default:
				posY = 100;			
		endcase
endmodule 
