module fsm(input logic[1:0] conditions, input logic clk, reset, output logic[1:0] out);

	logic [1:0] state, next_state;
	
	// sequential logic
	always_ff @(posedge clk, posedge reset) 
	begin
		if (reset) state <= 2'b00;
		else state <= next_state;	
	end
	
	// combinational logic
	always_comb begin
		case (state)
		2'b00: begin
			if (conditions == 2'b00) next_state = 2'b00;
			else next_state = 2'b01;
		end		
		2'b01: begin
			if (conditions == 2'b00) next_state = 2'b01;
			else next_state = 2'b10;
		end		
		2'b10: begin
			if (conditions == 2'b00) next_state = 2'b10;
			else next_state = 2'b11;
		end		
		2'b11: begin
			if (conditions == 2'b00) next_state = 2'b11;
			else next_state = 2'b00;
		end		
		default: begin
			if (conditions == 2'b00) next_state = 2'b00;
			else next_state = 2'b01;
		end		
		endcase
	end

	assign out = state;

endmodule 