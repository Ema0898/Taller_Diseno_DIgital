module decoRGB(input logic [1:0] codedColor, output logic [23:0] RGB);

	always_comb
		case(codedColor)		
			2'b00: 
				RGB = 24'b111101110011100000000000;
			2'b01:
				RGB = 24'b111111111010011000000000;
			2'b10:
				//Combinacion ganadora, poner aqui el fondo
				RGB = 24'b101010111111111111111011;
			2'b11:
				RGB = 24'b000000000000000000000000;
		default:
				RGB = 24'b0;
		endcase

endmodule 