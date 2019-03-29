module test();

	logic [32:0] a, b, z;
	logic [1:0] conditions, state;
	logic clk, reset;
	
	floating_adder_fsm DUT(a, b, conditions, clk, reset, z, state);
	
	parameter a1 = 33'b001000111100010001011100000000011;
	parameter b1 = 33'b001000111101001001001100011111010;
	
	parameter a2 = 33'b101000011100001110010111110110011;
	parameter b2 = 33'b101000011000011001010101011111000;
	
	parameter a3 = 33'b101000011111010011100101111011101;
	parameter b3 = 33'b101000010100110111101110100111110;
	
	parameter a4 = 33'b001000000110010000010010000001011;
	parameter b4 = 33'b001000000011000100100010110100010;
	
	parameter a5 = 33'b001000000010010010000111111011011;
	parameter b5 = 33'b001000000001011011111100001010100;

	parameter a6 = 33'b101000100000000010000000000000000;
	parameter b6 = 33'b101000111111001000100010100000000;
	
	parameter a7 = 33'b101001000000001010100011011101000;
	parameter b7 = 33'b101000011011100101101011011010101;
	
	parameter a8 = 33'b001000100001000111000101111001100;
	parameter b8 = 33'b001000011001010101001111110110101;

	initial begin
	
	// -------- Caso 1 70000.02 + 84273.95
	//Initial reset
		#1 $display("Caso 1");
		#10 a = a1; b = b1;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a1; b = b1;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a1; b = b1;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
						
	// ------------ Caso 2 -270.3726544 + -140.667854
		//Initial reset
		#1 $display("Caso 2");
		#10 a = a2; b = b2;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a2; b = b2;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a2; b = b2;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		
	//-------------- Caso 3 -467.5926772 + -77.93211287
		#1 $display("Caso 3");
		//Initial reset
		#10 a = a3; b = b3;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a3; b = b3;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a3; b = b3;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		
	// ------ Caso 4 6.2544 + 3.5355
		#1 $display("Caso 4");
		//Initial reset
		#10 a = a4; b = b4;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a4; b = b4;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a4; b = b4;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		
		
	// -------  Caso 5 3.141592654 + 2.718281828
		#1 $display("Caso 5");
		//Initial reset
		#10 a = a5; b = b5;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a5; b = b5;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a5; b = b5;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		
	// ----- Caso 6 -516 + -116874
		#1 $display("Caso 6");
		//Initial reset
		#10 a = a6; b = b6;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a6; b = b6;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a6; b = b6;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		
		
	// ----- Caso 7 -136475.6226 + -242.839186
		#1 $display("Caso 7");
		//Initial reset
		#10 a = a7; b = b7;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a7; b = b7;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a7; b = b7;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		
	//  ------ Caso 8 654.1843384 + 170.6238597
		#1 $display("Caso 8");
		//Initial reset
		#10 a = a8; b = b8;
		#10 conditions = 'b00; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a8; b = b8;
		#10 conditions = 'b00; clk = 1; reset = 1; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Comp exp
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);	
		//Shifts
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
		//Add
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		//Norm
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 0; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);						
		#10 a = a8; b = b8;
		#10 conditions = 'b01; clk = 1; reset = 0; 
		#1	$display("a = %b, b = %b, conditions = %b, clk = %b, reset = %b, z = %b, state = %b", 
						a, b, conditions, clk, reset, z, state);
				
	end 
	
endmodule 