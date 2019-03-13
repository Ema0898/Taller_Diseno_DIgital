module adder_test();

	parameter N = 4;

	logic [N - 1 : 0] a, b, z;
	logic [3:0] s;
	logic carry_out, msb_sum;
	
	combinational_circuit_module #(N) DUT(a, b, s, z, carry_out, msb_sum);
	
	initial begin
		#10 a = 'b1011; b = 'b1001; s = 'b1110;
		#1 $display("a = %b, b = %b, s = %b, z = %b, carry_out = %b, msb = %b", a, b, s, z, carry_out, msb_sum);
			
	end

endmodule 