/*********************************
    D-FLIPFLOP BEHAVIORAL 
    (Positive edge triggred)
**********************************/

module dffb(q,d,clk);

input d,clk;
output reg q;

always@(posedge clk)
    if(clk)     // optional 
        q<=d;   // non-blocking

endmodule
