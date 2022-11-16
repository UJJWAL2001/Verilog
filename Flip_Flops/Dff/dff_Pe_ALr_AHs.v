/***********************************************
    D - Flip-Flop  (positive edge triggred)
    Asynchronous Reset (active low)
    Asynchronous Set (active high)
***********************************************/

module dff_Pe_ALr_AHs(q,d,clk,rst,set);

input d,clk,rst,set;
output reg q;

always@(posedge clk , negedge rst , posedge set)
begin
    if(!rst)
        q<=1'b0;
    else if(set)
        q<=1'b1;
    else
        q<=d; 
end


endmodule
