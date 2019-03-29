module frequency_divider_bouncing
	(input logic clk, reset, output logic clk_out);	

	logic [25:0] counter;

	always_ff @(posedge clk, posedge reset)
		begin
			if(reset)
				begin
					counter <= 26'd0;
					clk_out <= 1'b0;
				end
			else if(counter == 26'd3125000)
				begin
					counter <= 26'd0;
					clk_out <= ~clk_out;
				end
			else
				begin
					counter <= counter + 1;
				end
		end

endmodule

