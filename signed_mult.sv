// signed multiplication. Used to test the testbench.
// CSE140L
module signed_mult (
  output logic signed [15:0] out,
  input			             clk,
  input signed        [ 7:0] a,
                             b,
  output logic				 done);

  logic signed [ 7:0] a_reg,
          	          b_reg;

  wire  signed [15:0] mult_out;

  assign mult_out = a_reg * b_reg;

  always @ (posedge clk) begin
    done = 0;
    a_reg <= a;
    b_reg <= b;
    out <= mult_out;
	done = 1;
  end

endmodule
