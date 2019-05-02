module decoButtons(input logic [3:0] buttons, output logic [1:0] zone);

	always_comb
		case(buttons)		
			4'b1000: 
				zone = 2'b00;				
			4'b0100:
				zone = 2'b01;	
			4'b0010:
				zone = 2'b10;
			4'b0001:
				zone = 2'b11;
		default:
				zone = 2'b00;			
		endcase

endmodule 