module decoFSM(input logic [1:0] state, output logic [3:0] z);

	always_comb
		case(state)		
			2'b00: 
				z = 4'b1000;
			2'b01:
				z = 4'b0100;
			2'b10:
				z = 4'b0010;
			2'b11:
				z = 4'b0001;
		default:
				z = 4'b0000;
		endcase
endmodule 