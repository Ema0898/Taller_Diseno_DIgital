module asr
	#(parameter N = 4)
	(input logic signed [N - 1 : 0] a, output logic signed [N - 1 : 0] z);
	
	assign z = a >>> 1;
	
endmodule
