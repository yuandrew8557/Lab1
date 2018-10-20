// load and store register
// CSE140L   Fall 2018
module register # (parameter N = 8)
  (input clk,
   input [N-1:0] in,		  // data in
   output logic [N-1:0] out,  // data out
   input load,				  // controls
         clear
   );
	 
  always @ (posedge clk, posedge clear)	begin
  // fill in guts
  //   clear   load    out
  // 	 1       0      0
  //     1       1      0
  //     0       0     hold
  //     0       1      in   
  if(clear) begin
      out <= 0;  // clear == 1, load == x
  end else begin
      if(load) begin
	      out <= in;  // clear == 0, load == 1
	  end else begin
	      // clear == 1, load == 0, then do nothing
	  end
  end
  // What would be the impact of leaving posedge clear out of 
  //  the sensitivity list? 
  // Leaving posedge clear out of the sensitivity list would
  //  leave out == in always.
  end
		
endmodule

