module test();

	logic [32:0] A, B, sum;
	
	floating_point_adder DUT(A, B, sum);

	initial begin
		#10 A = 33'b001000001011001000001100010010011; B = 33'b000111111110101011100001010001111;
		#1	$display("a = %b, B = %b, sum = %b", A, B, sum);
				
	end 
	
endmodule 