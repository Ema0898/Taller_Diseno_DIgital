module arithmetic_module
	#(parameter N = 4)
	(input logic [N - 1 : 0] a, b, input [1:0] s, output logic [N - 1 : 0] d0, d1, d2, d3, d4, d5, d6, d7, output carry_out, msb_result);
	
	logic [N - 1 : 0] sum_wire;
		
	add_sub_module #(N) adder(a, b, s, sum_wire, carry_out);		
	
	assign msb_result = sum_wire[N - 1];	
	assign d0 = sum_wire;
	assign d1 = sum_wire;
	assign d2 = sum_wire;
	assign d3 = sum_wire;
		
	asl #(N) shift_left_a (a, d4);
	asl #(N) shift_left_b (b, d5);
	asr #(N) shift_rigth_a (a, d6);
	asr #(N) shift_rigth_b (b, d7);
	
	
endmodule 