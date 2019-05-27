module memory (input logic scan_ready,  input logic[7:0] scan_code, output logic[7:0] register);

	//Almacena el codigo en un registro
	always @(posedge scan_ready)
	begin
		register <= scan_code;
	end

endmodule

