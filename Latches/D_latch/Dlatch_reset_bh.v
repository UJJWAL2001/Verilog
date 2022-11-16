/*************************************
    D Latch - Behavioural with reset
*************************************/

module Dlatch_reset_bh(q,d,en,rst);

input en,d,rst;
output reg q;

always@(en,q,rst)
begin
    if(rst)
        q=1'b0;
    else if(en)
        q=d;
end
    
endmodule
