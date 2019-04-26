module VGA (
    input clk,  // Clock FPGA
    input reset, 
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
    
    ClkDivisor VGAClkDivisor(clk,clockVGA);
    
    ControllerSync VGASync(clockVGA,~reset,
        vga_hs,vga_vs,hCounter,vCounter,vga_blank_n); 

	 assign posX = 200;
	 assign posY = 300;
        
    //ControllerPainter VGAPainter(~reset,
      //RGB,blue,green,red);
		
	PixelGenerator pixel(posX, posY, hCounter, vCounter, RGB);
	
	assign red = RGB[23:16];
	assign green = RGB[15:8];
	assign blue = RGB[7:0];
    
endmodule 