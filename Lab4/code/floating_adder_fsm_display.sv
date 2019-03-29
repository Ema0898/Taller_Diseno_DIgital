module floating_adder_fsm_display(input logic clock, reset, button, switch, output logic[6:0] s0, s1, s2, s3, s4, s5, output logic[1:0] state);

	logic slowclock, d_switch;
	
	logic[32:0] a, b, adder_out;
	logic[1:0] conditions;
	logic[3:0] seg0, seg1, seg2, seg3, seg4, seg5;
	
	assign conditions[0] = ~button;
	assign conditions[1] = d_switch;
	
	assign a = 33'b001000001010001111000010100011111;
	assign b = 33'b001000010000001001101011100001010;

	frequency_divider divider1(clock, ~reset, slowclock);
	
	debouncing debounce1(slowclock, switch, d_switch);
	
	floating_adder_fsm adder1(a, b, conditions, slowclock, ~reset, adder_out, state);
	
	check_result checker(adder_out, state, seg0, seg1, seg2, seg3, seg4, seg5);
	
	DecoSeg deco1(seg0, s0);
	DecoSeg deco2(seg1, s1);
	DecoSeg deco3(seg2, s2);
	DecoSeg deco4(seg3, s3);
	DecoSeg deco5(seg4, s4);
	DecoSeg deco6(seg5, s5);
	
endmodule 