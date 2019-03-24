module test();

	logic [32:0] A, B;
   logic [8:0] shift, max_exp;
	logic [23:0] x, y;
	
	mantissa_shift_module DUT(A, B, shift, x, y, max_exp);

	initial begin
		#10 B = 33'b001000000111111000000000000000000; A = 33'b000111110010000000000000000000000; shift = 9'b111111011; 
		#1	$display("a = %b, B = %b, shift = %b, x = %b, y = %b, max_exp = %b", A, B, shift, x, y, max_exp);
				
	end 
	
	// 111111000000000000000000
	// 000001100000000000000000
	// 010000001
endmodule 