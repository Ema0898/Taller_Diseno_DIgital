module top(input logic clk, reset,
			  output logic mem_write,
			  output logic [31:0] write_data, data_adr);
			  
  logic [31:0] pc, instr, read_data;
  
  processor CPU(clk, reset, instr, read_data, pc, data_adr, write_data, mem_write);
  instruction_memory im(pc, instr);
  data_memory dm(clk, mem_write, data_adr, write_data, read_data);
  
endmodule 