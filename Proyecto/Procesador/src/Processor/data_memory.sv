module data_memory(input logic clk, rst, we,
						 input logic [31:0] a, wd,
						 output logic [31:0] rd);
						 
  logic [127:0][31:0] memory;
	
  assign rd = memory[a];
	
  always_ff @(negedge clk, negedge rst)
    begin
      if(rst == 0)
		begin
        memory <= 0;
      end
      else if(we == 1)
		begin
			memory[a] <= wd;
		end
	end
	
endmodule 