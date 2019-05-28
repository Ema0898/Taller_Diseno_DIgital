module processor(input logic clk,
					  input logic rst,
					  input logic [31:0] instruction, read_data,
					  output logic [31:0] pc, direction, write_data,
					  output logic mem_write);
					  
  logic [3:0] alu_flags;
  
  data_path path(clk, rst, 1'b0, 1'b1, 4'b0, instruction, read_data, alu_flags, pc, direction, write_data);
  assign mem_write = 'b0;
  
endmodule 