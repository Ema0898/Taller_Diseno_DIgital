module floating_point_adder(input logic[32:0] a, b, input logic [3:0] controller, input clk,
									output logic[8:0] exp_out, output logic[23:0] shift_out,
									output logic [24:0] add_out, output logic [32:0] final_out);

	// Cables de los registros	
	logic [65:0] reg1_in, reg1_out;
	logic [74:0] reg2_in, reg2_out;
	logic [47:0] reg3_in, reg3_out;
	logic [34:0] reg4_in, reg4_out;
	
	// Cables de salida de los modulos
	logic [8:0] comp_result, final_exp;
	logic [32:0] a_checked, b_checked;
	logic [23:0] a_final_m, b_final_m;
	logic [24:0] final_mantissa; 
	logic final_sign_bit;
	
	// Compara exponentes
	assign reg1_in[65:33] = a;
	assign reg1_in[32:0] = b;
	
	register #(66) reg1(clk, controller[3], reg1_in, reg1_out);
	exp_comp_module comp1(reg1_out[65:33], reg1_out[32:0], comp_result);	
	
	// Realiza el shift		
	assign reg2_in[74:66] = comp_result;
	assign reg2_in[65:33] = a;
	assign reg2_in[32:0] = b;	
	
	register #(75) reg2(clk, controller[2], reg2_in, reg2_out);
	mantissa_shift_module shifter1(reg2_out[65:33], reg2_out[32:0], reg2_out[74:66], a_final_m, b_final_m, final_exp, final_sign_bit);
	
	// Suma de mantisas
	assign reg3_in[47:24] = a_final_m;
	assign reg3_in[23:0] = b_final_m;
	
	register #(48) reg3(clk, controller[1], reg3_in, reg3_out);
	mantissa_add_module adder1(reg3_out[47:24], reg3_out[23:0], final_mantissa);
	
	// Normalizacion y ensamble
	assign reg4_in[34] = final_sign_bit;
	assign reg4_in[33:25] = final_exp;
	assign reg4_in[24:0] = final_mantissa;
	
	register #(35) reg4(clk, controller[0], reg4_in, reg4_out);
	mantissa_norm_module nomarlizer1(reg4_out[24:0], reg4_out[33:25], reg4_out[34], final_out);
	
	// Asign finales
	assign exp_out = comp_result;
	assign shift_out = b_final_m;
	assign add_out = final_mantissa;
	
endmodule 