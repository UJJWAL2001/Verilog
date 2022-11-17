/*****************************************
    D Flip-Flop Positive edge triggred
    Synchronous Reset - Active Low
    Synchronous Set - Active High
*****************************************/

module dff_Pe_SLr_SHs (q,d,clk,rst,set);
input d,clk,rst,set;
output reg q;

always @(posedge clk) begin
    if(!rst)
        q<=1'b0;
    else if(set)
        q<=1'b1;
    else    
        q<=d;
end


endmodule