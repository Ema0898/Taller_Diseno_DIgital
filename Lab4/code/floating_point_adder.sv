module floating_point_adder(input logic[32:0] a, b, output logic[32:0] sum);

	logic [8:0] comp_result, final_exp;
	logic [32:0] a_checked, b_checked;
	logic [23:0] a_final_m, b_final_m;
	logic [24:0] final_mantissa; 
	logic final_sign_bit;
	
	exp_comp_module comp1(a, b, comp_result);
	
	check_complement checker1(a, b, a_checked, b_checked);
	
	mantissa_shift_module shifter1(a_checked, b_checked, comp_result, a_final_m, b_final_m, final_exp, final_sign_bit);
	
	mantissa_add_module adder1(a_final_m, b_final_m, final_mantissa);
	
	mantissa_norm_module nomarlizer1(final_mantissa, final_exp, final_sign_bit, sum);
	
endmodule 