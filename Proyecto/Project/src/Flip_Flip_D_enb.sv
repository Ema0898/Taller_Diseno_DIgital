module flip_flop_D_IO	
	#(parameter N = 4)
	(input logic clk, reset, enb, input logic [N-1:0] d, output logic [N-1:0] q);
	
	logic [25:0] counter;
	
	always_ff @(posedge clk, posedge reset)
		begin
		if (reset) begin
				q <= 'b0;
				counter <= 25'b0;
		  end
		else if(counter == 25'd12500000)
				begin
					counter <= 25'd0;
					if (enb) q <= d;
					else q <= q;
				end
			else
				begin
					counter <= counter + 1'b1;
				end
      end

endmodule

