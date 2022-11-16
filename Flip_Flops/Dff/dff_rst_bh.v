/***********************************************
    D - Flip-Flop  (positive edge triggred)
    Asynchronous Reset (active high)
***********************************************/

module dff_rst_bh(q,d,clk,rst);

input d,clk,rst;
output reg q;

always@(posedge clk or posedge rst)
begin
    if(rst)
        q<=1'b0;
    else 
        q<=d; 
end


endmodule
