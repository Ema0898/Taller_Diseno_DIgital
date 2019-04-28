module frequency_divider
	(input logic clk, reset, output logic clk_out);	

	logic [4:0] counter;

	always_ff @(posedge clk, posedge reset)
		begin
			if(reset)
				begin
					counter <= 5'd0;
					clk_out <= 1'b0;
				end
			else if(counter == 5'd6)
				begin
					counter <= 5'd0;
					clk_out <= ~clk_out;
				end
			else
				begin
					counter <= counter + 1;
				end
		end

endmodule

