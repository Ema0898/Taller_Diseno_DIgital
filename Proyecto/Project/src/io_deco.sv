module io_deco(input logic [31:0] direction, instr, output logic mem_enb, sprite_enb, selec);

  logic condition;
  assign condition = (direction <= 119);

  mux_2_x_1 #(1) mux0(1'b0, 1'b1, condition, mem_enb);
  mux_2_x_1 #(1) mux1(1'b1, 1'b0, condition, sprite_enb);
  mux_2_x_1 #(1) mux2(1'b0, 1'b1, condition, selec);  

endmodule 