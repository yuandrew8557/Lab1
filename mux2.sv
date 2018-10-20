// 2:1 mux (selector) of N-wide buses
// CSE140L		Fall 2018   Lab 1
module mux2 #(parameter WIDTH = 8)
             (input  [WIDTH-1:0] d0, d1, 
              input              s, 
              output [WIDTH-1:0] y);
// fill in guts
// s   y
// 0   d0
// 1   d1
case(s) begin
    0: y = d0;
	1: y = d1;
endcase

endmodule


