
module read_And_shift_register
(input logic ps2_clk_filtered, reset, ps2_data, read, 
output logic[7:0] scan_code, output scan_ready);
	
	reg [3:0] incnt;
	reg [8:0] shiftin;
	reg ready_set;
	reg read_char;
	
	//Lee los datos procedentes del teclado
	always @(posedge ps2_clk_filtered)
	begin
		if (reset==1)
		begin
			incnt <= 4'b0000;
			read_char <= 0;
		end
		else if (ps2_data==0 && read_char==0)
		begin
		read_char <= 1;
		ready_set <= 0;
		end
		else
		begin
			// corrimiento de los 8 bits para hacer el codigo de escaneo	
			if (read_char == 1)
				begin
					if (incnt < 9) 
					begin
					incnt <= incnt + 1'b1;
					shiftin = { ps2_data, shiftin[8:1]};
					ready_set <= 0;
				end
			else
				begin
					incnt <= 0;
					scan_code <= shiftin[7:0];
					read_char <= 0;
					ready_set <= 1;
				end
			end
		end
	end
	
	//Indica si ya el codigo es leido e indica que se puede presionar otra tecla
	always @ (posedge ready_set or posedge read)
		if (read == 1) scan_ready <= 0;
		else scan_ready <= 1;
	
	
endmodule 