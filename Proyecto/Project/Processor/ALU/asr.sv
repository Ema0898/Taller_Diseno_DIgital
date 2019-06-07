module asr
	#(parameter N = 4)
	(input logic signed [N - 1 : 0] a, input logic [N - 1 : 0] b, output logic signed [N - 1 : 0] z);
	
	assign z = a >>> b;
	
endmodule
