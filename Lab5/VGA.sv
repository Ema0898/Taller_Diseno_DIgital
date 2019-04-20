module VGA (
    input clk,  // Clock FPGA
    input reset,  //Button
	 input bit24,
	 input bit23,
	 input bit22,
    output vga_hs,
    output vga_vs,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue,
    output vga_blank_n,
    output clockVGA
    );
    
    logic [9:0] hCounter, vCounter;
    logic [23:0] color;
	 
	 assign color[23] = ~bit24;
	 assign color[22] = ~bit23;
	 assign color[21] = ~bit22;
	 
	 assign color[20:0] = 'b010101011010011001101;
    
    ClkDivisor VGAClkDivisor(clk,clockVGA);
    
    ControllerSync VGASync(clockVGA,~reset,
        vga_hs,vga_vs,hCounter,vCounter,vga_blank_n);        
        
    ControllerPainter VGAPainter(~reset,
        color,blue,green,red);
    
endmodule 