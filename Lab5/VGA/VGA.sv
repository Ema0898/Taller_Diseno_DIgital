module VGA (
    input clk,  // Clock FPGA
    input reset, 
	 input s0,
	 input s1,
    output vga_hs,
    output vga_vs,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue,
    output vga_blank_n,
    output clockVGA
    );
    
    logic [9:0] hCounter, vCounter;	 
	 logic [9:0] posX, posY;
	 //logic [23:0] RGB = 24'b101010111111111111111011;
	 logic [23:0] RGB;
	 logic [1:0] s;
    
    ClkDivisor VGAClkDivisor(clk,clockVGA);
    
    ControllerSync VGASync(clockVGA,~reset,
        vga_hs,vga_vs,hCounter,vCounter,vga_blank_n); 

	 assign posX = 300;
	 assign posY = 200;
	 
	 assign s[1] = ~s1;
	 assign s[0] = ~s0;
        
    //ControllerPainter VGAPainter(~reset,
      //RGB,blue,green,red);
		
	PixelGenerator pixel(posX, posY, vCounter, hCounter, s, RGB);
	
	assign red = RGB[23:16];
	assign green = RGB[15:8];
	assign blue = RGB[7:0];
    
endmodule 