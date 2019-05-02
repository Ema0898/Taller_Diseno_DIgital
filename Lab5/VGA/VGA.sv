module VGA (
    input clk,  // Clock FPGA
    input reset,
	 input logic [3:0] btn,
    output vga_hs,
    output vga_vs,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue,
    output vga_blank_n,
    output clockVGA, 
	 output logic [6:0] display
    );
    
    logic [9:0] hCounter, vCounter, limitX, finalPosX, finalPosY;	 
	 //logic [9:0] posX, posY, newPosX, newPosX2;
	 logic [9:0] posX, posY, newPosX, rposX, rposY;
	 
	 logic [23:0] RGB;
	 logic [1:0] s;
	 
	 logic [3:0] nBtn;
	 
	 logic [1:0] zone;
	 logic [2:0] state;
	 	 
	 logic refreshDraw, low_clock, slower_clock, d_reset, guess;
	 
	 assign posX = 100;
	 assign posY = 200;
	 
	 assign nBtn[0] = ~btn[0];
	 assign nBtn[1] = ~btn[1];
	 assign nBtn[2] = ~btn[2];
	 assign nBtn[3] = ~btn[3];
	     
    ClkDivisor VGAClkDivisor(clk,clockVGA);
	 frequency_divider divider(clk, reset, low_clock);
	
	 frequency_divider_deb fddeb(clk, reset, slower_clock);
	 
	 debouncing deb(slower_clock, reset, d_reset);
    
    ControllerSync VGASync (
	 
									clockVGA,
									d_reset,
									vga_hs,
									vga_vs,
									hCounter,
									vCounter,
									vga_blank_n,
									refreshDraw
									
									);
		 
	random rnd(clockVGA, d_reset, state, zone, rposX, rposY, limitX);
	win_module win(nBtn, zone, guess);
	fsm_top fsm(nBtn, clockVGA, d_reset, guess, state);
	
	//animation anm(clockVGA, low_clock, d_reset, refreshDraw, posX, s, newPosX);
	
   animation anm(clockVGA, low_clock, d_reset, refreshDraw, rposX, limitX, state, s, newPosX);

	mux_8_x_1 #(24) muxX(posX, rposX, rposX, newPosX, newPosX, posX, 'b0, 'b0, state, finalPosX);
	mux_8_x_1 #(24) muxY(posY, rposY, rposY, rposY, rposY, posY, 'b0, 'b0, state, finalPosY);	
	PixelGenerator pixel(finalPosY, finalPosX, vCounter, hCounter, s, state, RGB);		  
	 
	
	assign red = RGB[23:16];
	assign green = RGB[15:8];
	assign blue = RGB[7:0];
	
	DecoSeg deco(state, display);
    
endmodule 