module decoLimitX(input logic [1:0] codedPosition, output logic [9:0] posX);

	always_comb
		case(codedPosition)		
			2'b00: 
				posX = 288;				
			2'b01:
				posX = 608;	
			2'b10:
				posX = 288;
			2'b11:
				posX = 608;
		default:
				posX = 0;			
		endcase
endmodule 