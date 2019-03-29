module check_result(input logic[32:0] adder_out, input logic[1:0] state, output logic[3:0] seg0, seg1, seg2, seg3, seg4, seg5);

	logic sign_bit;
	logic[7:0] exponent, shift_amount;
	logic[22:0] mantissa;
	logic[29:0] real_mantissa, shifted_mantissa;

	always_comb begin
		if(state == 2'b11) begin
			mantissa = adder_out[22:0];
			exponent = adder_out[30:23];
			shift_amount = exponent - 8'b01111111;
			
			real_mantissa[29:24] = 'b0;
			real_mantissa[23] = 'b1;
			real_mantissa[22:0] = mantissa;
			
			shifted_mantissa = real_mantissa << shift_amount;
			
			seg0 = shifted_mantissa[10:7];
			seg1 = shifted_mantissa[14:11];
			seg2 = shifted_mantissa[18:15];
			seg3 = shifted_mantissa[22:19];
			seg4 = shifted_mantissa[26:23];
			seg5 = shifted_mantissa[29:27];
		
		end
		else
		begin
			mantissa = adder_out[22:0];
			exponent = adder_out[30:23];
			shift_amount = exponent - 8'b01111111;
			
			real_mantissa[29:24] = 'b0;
			real_mantissa[23] = 'b1;
			real_mantissa[22:0] = mantissa;
			
			shifted_mantissa = real_mantissa << shift_amount;
		
			seg0 = adder_out[3:0];
			seg1 = adder_out[7:4];
			seg2 = adder_out[11:8];
			seg3 = adder_out[15:12];
			seg4 = adder_out[19:16];
			seg5 = adder_out[23:20];
		end
	end 
	
endmodule 