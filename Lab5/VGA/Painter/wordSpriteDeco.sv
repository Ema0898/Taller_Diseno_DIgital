module wordSpriteDeco(input logic codedColor, output logic [23:0] RGB);

	always_comb
		case(codedColor)		
			1'b0: 
				RGB = 24'b101010111111111110111111;
			1'b1:
				RGB = 24'b000011000001111110000001;
		default:
				RGB = 24'b101010111111111110111111;
		endcase

endmodule 