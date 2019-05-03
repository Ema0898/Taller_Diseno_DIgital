module VGA_test();
	
	logic clk, reset, vga_hs, vga_vs, vga_blank_n, clockVGA;
	logic [1:0] btn, zone;
	logic [6:0] display;
	logic [7:0] red, green, blue;
	
	VGA DUT(clk, reset, btn, vga_hs, vga_vs, red, green, blue, vga_blank_n, clockVGA, display, zone);
	
	initial begin
	  
	  clk = 1; reset = 1; btn = 2'b00; #10	  
	  #1	$display("clk = %b, reset = %b, btn = %b vga_hs = %b, vga_vs = %b, red = %b, green = %b, blue = %b, vga_blank = %b, clockVGA = %b, display = %b, zone = %b", 
						clk, reset, btn, vga_hs, vga_vs, red, green, blue, vga_blank_n, clockVGA, display, zone);	
						
	  clk = 0; reset = 0; btn = 2'b00; #10	  
	  #1	$display("clk = %b, reset = %b, btn = %b vga_hs = %b, vga_vs = %b, red = %b, green = %b, blue = %b, vga_blank = %b, clockVGA = %b, display = %b, zone = %b", 
						clk, reset, btn, vga_hs, vga_vs, red, green, blue, vga_blank_n, clockVGA, display, zone);
						
	  clk = 1; reset = 0; btn = 2'b00; #10	  
	  #1	$display("clk = %b, reset = %b, btn = %b vga_hs = %b, vga_vs = %b, red = %b, green = %b, blue = %b, vga_blank = %b, clockVGA = %b, display = %b, zone = %b", 
						clk, reset, btn, vga_hs, vga_vs, red, green, blue, vga_blank_n, clockVGA, display, zone);						
				
	  clk = 0; reset = 0; btn = 2'b00; #10	  
	  #1	$display("clk = %b, reset = %b, btn = %b vga_hs = %b, vga_vs = %b, red = %b, green = %b, blue = %b, vga_blank = %b, clockVGA = %b, display = %b, zone = %b", 
						clk, reset, btn, vga_hs, vga_vs, red, green, blue, vga_blank_n, clockVGA, display, zone);	
					
	  clk = 1; reset = 0; btn = 2'b00; #10	  
	  #1	$display("clk = %b, reset = %b, btn = %b vga_hs = %b, vga_vs = %b, red = %b, green = %b, blue = %b, vga_blank = %b, clockVGA = %b, display = %b, zone = %b", 
						clk, reset, btn, vga_hs, vga_vs, red, green, blue, vga_blank_n, clockVGA, display, zone);		
	end
	
endmodule 