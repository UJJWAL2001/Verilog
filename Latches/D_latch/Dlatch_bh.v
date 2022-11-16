/***********************
    D Latch - Behavioural
***********************/

module Dlatch_bh(q,d,en);
input en,d;
output reg q;

always@(en,q)
    if(en) q=d;

endmodule
