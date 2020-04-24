`timescale 1ns/1ns

module b6shiftregci(input [5:0] in , input ci, clr ,shift, ld, clk, rst, output reg [5:0] out);
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
            out <= {ci, out[5:1]};
  end
endmodule

