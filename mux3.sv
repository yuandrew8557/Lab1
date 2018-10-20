// 3:1 mux    
// CSE140L	  Fall 2018
module mux3 #(parameter WIDTH = 8)
             (input  [WIDTH-1:0] d0, d1, d2,   // data in
              input  [1:0]       s, 		   // control in
              output [WIDTH-1:0] y);		   // data out

// fill in guts
//  s1   s0    y
//  0     0   d0
//  0     1	  d1
//  1     0   d2
//  1     1	  d2
if(s1) begin
    y = d2;  // s1 == 1, s0 == x
end else begin
    if(s0) begin
	    y = d1;  // s1 == 0, s0 == 1
	end else begin
	    y = d0;  // s1 == 1, s0 == x
    end
end
endmodule


