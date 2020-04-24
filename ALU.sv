`timescale 1ns/1ns

module addSub(input [5:0] a, b, input add, sub, output reg [5:0] sum, output reg co);

  assign {co,sum} = (add) ? a+b : (sub) ? a-b : {co,sum} ;

endmodule
