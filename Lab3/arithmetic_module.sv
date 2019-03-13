module arithmetic_module
	#(parameter N = 4)
	(input logic [N - 1 : 0] a, b, input s, output logic [N - 1 : 0] d0, d1, d2, d3, output carry_out, msb_result);
	
	logic [N - 1 : 0] sum_wire;
		
	add_sub_module #(N) adder(a, b, s, sum_wire, carry_out);		
	
	assign msb_result = sum_wire[N - 1];	
	assign d0 = sum_wire;
	assign d1 = sum_wire;
		
	asl #(N) shift_left_a (a, b, d2);
	asr #(N) shift_right_a (a, b, d3);
	
	
endmodule 