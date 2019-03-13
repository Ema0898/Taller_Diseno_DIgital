module adder_test();

	parameter N = 3;

	logic [N - 1 : 0] a, b, z;
	logic [3:0] s, flags;
	
	ALU #(N) DUT(a, b, s, z, flags);
	
	initial begin
		#10 a = 'b1010; b = 'b1010; s = 'b0111;
		#1 $display("a = %b, b = %b, s = %b, z = %b, flags = %b", a, b, s, z, flags);
			
	end

endmodule 