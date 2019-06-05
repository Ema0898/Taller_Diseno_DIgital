module adder_test();

	parameter N = 3;

	logic [N - 1 : 0] a, b, z;
	logic [3:0] s, flags;
	
	ALU #(N) DUT(a, b, s, z, flags);
	
	initial begin
		//NZCV
	
		a = 'b001; b = 'b001; s = 'b0000; #10;
		assert(z === 'b010) else $error("Output failed");
		assert(flags === 'b0000) else $error("Flags failed");
		
		a = 'b001; b = 'b001; s = 'b0001; #10;
		assert(z === 'b000) else $error("Output failed");
		assert(flags === 'b0110) else $error("Flags failed");
		
		a = 'b001; b = 'b010; s = 'b0100; #10;
		assert(z === 'b100) else $error("Output failed");
		assert(flags === 'b1000) else $error("Flags failed");
		
		a = 'b001; b = 'b001; s = 'b0101; #10;
		assert(z === 'b000) else $error("Output failed");
		assert(flags === 'b0100) else $error("Flags failed");
		
		a = 'b001; b = 'b001; s = 'b1000; #10;
		assert(z === 'b001) else $error("Output failed");
		assert(flags === 'b0000) else $error("Flags failed");
		
		a = 'b001; b = 'b001; s = 'b1010; #10;
		assert(z === 'b000) else $error("Output failed");
		assert(flags === 'b0100) else $error("Flags failed");
		
		#10 a = 'b001; b = 'b001; s = 'b1100; #10;
		assert(z === 'b010) else $error("Output failed");
		assert(flags === 'b0000) else $error("Flags failed");
			
	end

endmodule 
