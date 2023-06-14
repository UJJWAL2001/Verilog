`include "ALU_addition_v01.v" // can be replaced by v02 or v03

`timescale 1ns/100ps

module v01_tb;
reg [15:0] X,Y;
wire [15:0] Z;  wire S,ZR,CY,P,V;

ALU_addition DUT(.X(X),.Y(Y),.Z(Z),.Carry(CY),.Sign(S),.Zero(ZR),.Parity(P),.Overflow(V));

initial
    begin
        $dumpfile("ALU_addition_v01_tb.vcd"); 
        $dumpvars(0,v01_tb);
        $monitor("time=%d X=%h, Y=%h, Z=%h, S=%h, CY=%h, P=%h, V=%h, ZR=%h ",$time,X,Y,Z,S,CY,P,V,ZR);
        #5 X=16'h8fff; Y=16'h8000;
        #5 X=16'hfffe; Y=16'h0002;
        #5 X=16'haaaa; Y=16'h5555;
        #5 X=16'h4000; Y=16'h4000;
        #5 $finish;
    end

endmodule