module ror
  #(parameter N = 32, M = $clog2(N))
  (input logic  [N-1:0] a, input logic [M-1:0] b, output logic [N-1:0] c);
  
  logic [N-1:0] temp[N];
  
  assign temp[0] = a;
  
  genvar i;
   generate for(i = 0; i < N; i = i + 1)
     begin: generate_N_bit_ror
	    n_mux #(N) mux1(temp[i], b, c[i]);
		 
		 if (i != N - 1) 
		   assign temp[i + 1] = {temp[i][0], temp[i][N-1:1]};
		 end
		
	  
   endgenerate
  
  
endmodule 
