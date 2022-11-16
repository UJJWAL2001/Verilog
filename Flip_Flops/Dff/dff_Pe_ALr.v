/***********************************************
    D - Flip-Flop  (positivee edge triggred)
    Asynchronous Reset (active low)
***********************************************/

module dff_Pe_ALr(q,d,clk,rst);

input d,clk,rst;
output reg q;

always@(posedge clk , negedge rst)
begin
    if(!rst)
        q<=1'b0;
    else 
        q<=d; 
end


endmodule
