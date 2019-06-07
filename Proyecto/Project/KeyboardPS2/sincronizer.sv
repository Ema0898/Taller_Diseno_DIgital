module sincronizer(input logic clk_divider, ps2_clk, output logic ps2_clk_filtered);


	logic [7:0] filter;
	//Sincroniza el clk del divisor con el clk del teclado
	always_ff @(posedge clk_divider)
	begin
		filter <= {ps2_clk, filter[7:1]};
		if (filter==8'b1111_1111) ps2_clk_filtered <= 1;
		else if (filter==8'b0000_0000) ps2_clk_filtered <= 0;
	end

	endmodule
	