module alu_shift_deco(input logic [1:0] sh, output logic [3:0] alu_control);

	always_comb
		case(sh)		
			2'b00: 
				alu_control = 4'b1100;				
			2'b01:
				alu_control = 4'b1101;	
			2'b10:
				alu_control = 4'b0011;
			2'b11:
				alu_control = 4'b1110;
		default:
				alu_control = 4'b1100;			
		endcase

endmodule 