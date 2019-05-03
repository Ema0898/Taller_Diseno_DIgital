module fsm(input logic seg3, button, guess, clk, reset, output logic[2:0] out);

	logic [2:0] state, next_state;
	
	// sequential logic
	always_ff @(posedge clk) 
	begin
		if (reset) state <= 3'b000;
		else state <= next_state;	
	end
	
	// combinational logic
	always_comb begin
		case (state)
		3'b000: begin
			if (seg3) next_state = 3'b001;
			else next_state = 3'b000;
		end		
		3'b001: begin
			if (button) next_state = 3'b010;
			else next_state = 3'b001;
		end		
		3'b010: begin
			if (guess) next_state = 3'b011;
			else next_state = 3'b100;
		end		
		3'b011: begin
			if (seg3) next_state = 3'b101;
			else next_state = 3'b011;
		end
		3'b100: begin
			if(seg3)
				next_state = 3'b101;
			else
				next_state = 3'b100;			
		end
		3'b101: begin
			next_state = 3'b000;			
		end
		default: begin
			if (seg3) next_state = 3'b001;
			else next_state = 3'b000;
		end		
		endcase
	end

	assign out = state;

endmodule 
