module n_mux
	#(parameter N = 32, M = $clog2(N))
	(input logic [N-1:0] a, input logic [M-1:0] b, output logic c);
	
	assign c = a[b];
	
endmodule 