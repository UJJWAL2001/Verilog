// Test bench for counter_up_basic
`include "counter_up.v"

module counter_up_basic_tb;
reg clk,rst;
wire [7:0]count; 

counter_up_basic c0(.clk(clk),.rst(rst),.count(count));

always #5 clk=~clk;

initial begin

    $monitor("time=%d\tclk=%b\trst=%b\tcount=%d\t",$time,clk,rst,count);

    clk=0;
    rst=1;

    #10 rst=0;
    #20 rst=1;
    #100 $stop;
end

endmodule