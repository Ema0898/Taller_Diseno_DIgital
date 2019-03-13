module adder_test();

	parameter N = 4;

	logic [N - 1 : 0] a, b, d0, d1, d2, d3, d4, d5, d6, d7;
	
	logic_module #(N) DUT(a, b, d0, d1, d2, d3, d4, d5, d6, d7);
	
	initial begin
		#10 a = 'b1011; b = 'b1001;
		#1 $display("a = %b, b = %b, d0 = %b, d1 = %b, d2 = %b, d3 = %b, d4 = %b, d5 = %b, d6 = %b, d7 = %b",
		a, b, d0, d1, d2, d3, d4, d5, d6, d7);
			
	end

endmodule 