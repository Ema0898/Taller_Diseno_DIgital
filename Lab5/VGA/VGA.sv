module VGA (
    input clk,  // Clock FPGA
    input reset,
	 input logic [1:0] btn,
    output vga_hs,
    output vga_vs,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue,
    output vga_blank_n,
    output clockVGA, 
	 output logic [6:0] display,
	 output logic [1:0] zone
    );
    
    logic [9:0] hCounter, vCounter, limitX, finalPosX, finalPosY;	 
	 logic [9:0] posX, posY, newPosX, rposX, rposY;	 
	 logic [23:0] RGB;
	 logic [1:0] s, nBtn, counterSelect;
	 logic [2:0] state;	 
    logic [3:0] dsp;	 
	 logic refreshDraw, low_clock, slower_clock, d_reset, guess;	 
	 
	 assign posX = 100;
	 assign posY = 200;	 
	 assign nBtn[0] = ~btn[0];
	 assign nBtn[1] = ~btn[1];	 
	 assign d_reset = ~reset;
	     
    ClkDivisor VGAClkDivisor(clk,clockVGA);
	 frequency_divider divider(clk, d_reset, low_clock);
	
	 frequency_divider_deb fddeb(clk, d_reset, slower_clock);
	     
    ControllerSync VGASync (	 
	   clockVGA,
		d_reset,
		vga_hs,
		vga_vs,
		hCounter,
		vCounter,
		vga_blank_n,
		refreshDraw);
	
	counterBtn count(clk, ~state[0] & ~state[1] & ~state[2], nBtn[0], counterSelect);
	random rnd(clockVGA, d_reset, state, zone, rposX, rposY, limitX);
	win_module win(counterSelect, zone, guess);
	fsm_top fsm(nBtn[1], clockVGA, d_reset, guess, state);
		
   animation anm(clockVGA, low_clock, d_reset, refreshDraw, rposX, limitX, state, s, newPosX);

	mux_8_x_1 #(10) muxX(posX, rposX, rposX, newPosX, newPosX, posX, 10'b0, 10'b0, state, finalPosX);
	mux_8_x_1 #(10) muxY(posY, rposY, rposY, rposY, rposY, posY, 10'b0, 10'b0, state, finalPosY);	
	PixelGenerator pixel(finalPosY, finalPosX, vCounter, hCounter, s, counterSelect ,state, RGB);		  
	 	
	assign red = RGB[23:16];
	assign green = RGB[15:8];
	assign blue = RGB[7:0];
	
	assign dsp[3] = 1'b0;
	assign dsp[2:0] = state;
	
	DecoSeg deco(dsp, display);
    
endmodule 