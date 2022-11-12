/*********************************
    Test bench for 4 bit adder
*********************************/

`include "../full_adder_4bit_bh.v"

`timescale 1ns/100ps

module full_adder_4bit_bh_tb;
reg [3:0]a,b;
reg ci;
wire [3:0]s;
wire co;

full_adder_4bit_bh fa1_tb(s,co,a,b,ci);

initial
$monitor("time=%d \t a=%b \t b=%b \t ci=%b \t s=%b \t co=%b",$time,a,b,ci,s,co);

initial begin
    $dumpfile("full_adder_4bit_bh_tb.vcd");
    $dumpvars(0,full_adder_4bit_bh_tb);
    a=0;    b=0;
    ci=0;
    repeat(16) begin
        #10 a=a+1;
        repeat(16) begin
            #10 b=b+1;
            repeat(2) begin 
                #10 ci=~ci;
            end
        end
    end
end
    
endmodule