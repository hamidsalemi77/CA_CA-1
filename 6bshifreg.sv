`timescale 1ns/1ns

module b6shiftreg(input [5:0] in, input shift, clr, ld, clk, rst, output reg [5:0] out);
  always@(posedge clk, posedge rst) begin
    if(rst)
      out = 6'b000000;
    else
      if(clr)
        out = 6'b000000;
      else
        if(ld)
          out <= in;
        else
          if(shift)
             out <= {out[5], out[5:1]};
  end
endmodule