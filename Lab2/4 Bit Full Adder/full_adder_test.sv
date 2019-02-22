module full_adder_testbench();

	logic[3:0] A, B, O;
	logic Cin, Co;

	//DUT initialization
	four_bits_adder DUT(A, B, Cin, O, Co);

	initial begin
		#10 A = 0001; B = 0010; Cin = 0; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
		#10 A = 1000; B = 0110; Cin = 1; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
		#10 A = 1111; B = 0000; Cin = 1; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
		#10 A = 1111; B = 0110; Cin = 0; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
		#10 A = 1111; B = 1111; Cin = 1; 
		#1	$display("A = %b, B = %b, Cin = %b, O = %b, Co = %b", A, B, Cin, O, Co);
	end 


endmodule // and_test