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
	 //logic [9:0] posX, posY, newPosX, newPosX2;
	 logic [9:0] posX, posY, newPosX, rposX, rposY;
	 
	 logic [23:0] RGB;
	 logic [1:0] s;
	 	 
	 logic refreshDraw, low_clock;
	 
	 assign posX = 100;
	 assign posY = 200;
	 assign rposX = 300;
	 assign rposY = 400;
	     
    ClkDivisor VGAClkDivisor(clk,clockVGA);
	 frequency_divider divider(clk, ~reset, low_clock); 
    
    ControllerSync VGASync(clockVGA,~reset,
        vga_hs,vga_vs,hCounter,vCounter,vga_blank_n, refreshDraw);
		 
	// random rnd(clockVGA, ~reset, zone, rposX, rposY, limitX);
	// win_module win(btn, zone, guess);
	// fsm_top fsm(btn, clockVGA, ~reset, guess, state);
	// mux_4_x_1 #(24) muxX(posX, rposX, rposX, newPosX, state, finalPosX);
	// mux_4_x_1 #(24) muxY(posY, rposY, rposY, rposY, state, finalPosY);
	// animation anm(clockVGA, low_clock, ~reset, refreshDraw, rposX, limitX, state, s, newPosX);
	// PixelGenerator pixel(finalPosY, finalPosX, vCounter, hCounter, s, state, RGB);
		  
	animation anm(clockVGA, low_clock, ~reset, refreshDraw, posX, s, newPosX); 		  
	PixelGenerator pixel(posY, newPosX, vCounter, hCounter, s, 2'b01, RGB);
	
	assign red = RGB[23:16];
	assign green = RGB[15:8];
	assign blue = RGB[7:0];
    
endmodule 