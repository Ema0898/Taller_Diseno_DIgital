module extend_test();

	logic [23:0] imm;
	logic [1:0] imm_src;
	logic [31:0] imm_ext;
	
	extend DUT(imm, imm_src, imm_ext);
	
	initial begin
	imm = 24'h822D05; imm_src = 2'b00; #10;
	$display("imm = %b, imm_src = %b, imm_ext = %b", imm, imm_src, imm_ext);
	
	end

endmodule 