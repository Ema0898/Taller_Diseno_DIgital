module adder_test();

	parameter N = 10;
	logic[N - 1 : 0] A, B, O;
	logic Cin, Co;

	adder #(N)DUT(A, B, Cin, O, Co);

	initial begin
		#10 A = 10101010; B = 10101011; Cin = 0; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
		#10 A = 1111010111; B = 0000000001; Cin = 1; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
	end 


endmodule 