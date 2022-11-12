`include "FA_bh.v"

`timescale 1ns/100ps

module  FA_bh_tb;
reg     a,b,ci;
wire    s,c;

FA_bh FA1(s,c,a,b,ci);
initial begin

    $dumpfile("FA_bh_tb.vcd");
    $dumpvars(0,FA_bh_tb);

    $monitor("time=%d \t a=%b \t b=%b \t ci=%b \t s=%b \t c=%b",$time,a,b,ci,s,c);
    a=0;  b=0;
    ci=0;

    #10 a=1;
    #10 b=1;
    #10 ci=1;
    #10 $stop;
end

endmodule
