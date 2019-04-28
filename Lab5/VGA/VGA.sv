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
	 logic [9:0] posX, posY, newPosX;
	 
	 logic [23:0] RGB;
	 logic [1:0] s;
	 
	 logic refreshDraw;
	 logic low_clock;
	 
	 assign posX = 0;
	 assign posY = 200;
    
    ClkDivisor VGAClkDivisor(clk,clockVGA);
	 frequency_divider divider(clk, ~reset, low_clock); 
    
    ControllerSync VGASync(clockVGA,~reset,
        vga_hs,vga_vs,hCounter,vCounter,vga_blank_n, refreshDraw); 
		  
	 counter count(low_clock, ~reset, refreshDraw, s);
	 moveCounter move(clockVGA, ~reset, refreshDraw, posX, newPosX);	 	 
        
    //ControllerPainter VGAPainter(~reset,
      //RGB,blue,green,red);
		
	PixelGenerator pixel(posY, newPosX, vCounter, hCounter, s, RGB);
	
	assign red = RGB[23:16];
	assign green = RGB[15:8];
	assign blue = RGB[7:0];
    
endmodule 