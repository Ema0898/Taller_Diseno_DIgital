module processor_test();

  logic clk, reset, mem_write;
  logic [31:0] instruction, read_data, pc, direction, write_data;
	
  processor DUT(clk, reset, instruction, read_data, pc, direction, write_data, mem_write);
  

  initial begin
	
  clk = 0; reset = 1; instruction = 32'hE5944010; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write);	
	
  clk = 1; reset = 1; instruction = 32'hE5944010; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write);	
						
  clk = 0; reset = 1; instruction = 32'hE5949010; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write); 
					
  clk = 1; reset = 1; instruction = 32'hE5949010; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write);	
						
	// STR
						
	clk = 0; reset = 0; instruction = 32'hE0841009; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write); 
					
   clk = 1; reset = 0; instruction = 32'hE0841009; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write);	
						
	clk = 0; reset = 0; instruction = 32'hE0841009; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write); 
					
   clk = 1; reset = 0; instruction = 32'hE0841009; read_data = 32'hE5949010; #10
    #1	$display("clk = %b, reset = %b, instruction = %b, read_data = %b, pc = %b, direction = %b, write_data = %b, mem_write = %b", 
	 					clk, reset, instruction, read_data, pc, direction, write_data, mem_write);	
						
  end 
endmodule 