module io_deco(input logic [31:0] direction, instr, output logic mem_enb, sprite_enbX, sprite_enbY);

  logic conditionX, conditionY, condition;
  assign condition = (direction <= 119);
  assign conditionX = (direction == 120);
  assign conditionY = (direction == 121);

  mux_2_x_1 #(1) mux0(1'b0, 1'b1, condition, mem_enb);
  mux_2_x_1 #(1) mux1(1'b0, 1'b1, conditionX, sprite_enbX);
  mux_2_x_1 #(1) mux2(1'b0, 1'b1, conditionY, sprite_enbY);  

endmodule 