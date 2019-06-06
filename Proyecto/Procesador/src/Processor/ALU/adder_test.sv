module adder_test();

	parameter N = 32;

	logic [N - 1 : 0] a, b, z;
	logic [3:0] s, flags;
	
	ALU #(N) DUT(a, b, s, z, flags);
	
	initial begin
		//NZCV
	
		a = 32'h00000007; b = 32'h00000002; s = 4'b1110; #10;
		assert(z === 32'h00000003) else $error("Output failed");
		assert(flags === 'b0000) else $error("Flags failed");
					
	end

endmodule 
