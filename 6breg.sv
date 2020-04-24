module b6reg(input [5:0] in, input ld , clk, rst, output reg [5:0] out);
  always@(posedge clk, posedge rst) begin
    if(rst)
      out = 6'b000000;
    else
      if(ld)
        out <= in;
  end
endmodule

