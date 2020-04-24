
`timescale 1ns/1ns
module tb();
  
  reg clk, rst, start;
  reg [5:0] inbus;
  wire [5:0] outbus;
  wire ready;
  
  bothmult uut(inbus, start, clk, rst, outbus, ready);
        

  initial clk = 0;
  
  
  always
    #50 clk = !clk;
    
    
  
  initial
  begin
    inbus = 6'b010101;//21
    start = 0;
    rst = 1;
    #200;
    rst = 0;
    #200;
    start = 1;
    #200;
    start = 0;
    #300;
    inbus = 6'b001001;//9
    #5000;//189
    inbus = 6'b111001;//-7
    #100;
    start = 1;
    #200;
    start = 0;
    #300;
    inbus = 6'b001010;//10
    #5000;//-70
    inbus = 6'b000101;//5
    #100;
    start = 1;
    #200;
    start = 0;
    #300;
    inbus = 6'b111000;//-8
    #5000;//-40
    inbus = 6'b110011;//-13
    #100;
    start = 1;
    #200;
    start = 0;
    #300;
    inbus = 6'b101010;//-22
    //286
    
  end  
endmodule  
