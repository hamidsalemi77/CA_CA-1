`timescale 1ns/1ns
module counter(input clk,rst,InitZcnt,cnt,output counter_is_done);
    logic [2:0] r;
    logic done;
    always@(posedge clk,posedge rst) begin
        if(rst) r <= 3'b0;
        else begin
             if (InitZcnt) r <= 3'b0;
            else if(cnt) r <= r + 1;
            else r <= r;
        end
    end
    always@(posedge clk,posedge rst) begin
      if (r == 3'b101 )  done = 1'b1 ;
            else done = 1'b0;
              
 end
    assign counter_is_done = done;
endmodule