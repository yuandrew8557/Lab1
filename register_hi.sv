// load and store register with signals to control 
//   high and low bits separately or at the same time
// CSE140L   Fall 2018
module register_hl # (parameter N = 16)
 (input                clk,
  input [N/2-1:0]      inh,			  // data in 
  input [N/2-1:0]      inl,
  input                loadh,         // control
  input                loadl,
  input                clear,
  output logic[N-1:0]  out	  	);	  // data out
	
  always_ff @ (posedge clk, posedge clear) begin
  //fill in the guts
  //  clear   loadh    loadl	 out[N-1:N/2]   out[N/2-1:0] 
  //    1		x		 x	     0				  0
  //    0       0        1       hold             inl
  //    0       1        0       inh              hold
  //    0       1        1       inh              inl
  //    0       0        0       hold             hold
  if(clear) begin
      out <= 0;
  end else begin
      if(loadh) begin
	      out[N-1:N/2] <= inh;  // loadh == 1, loadl == x
		  if(loadl) begin
		      out[N/2-1:0] <= inl;  // loadh == 1, loadl == 1
	      end else begin
		      // loadh == 1, loadl == 0, do nothing
		  end
	  end
  end  
  end	
endmodule
