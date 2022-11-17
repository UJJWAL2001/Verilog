/*****************************************
    D Flip-Flop Positive edge triggred
    Synchronous Reset - Active High
*****************************************/

module dff_Pe_SHr (q,d,clk,rst);
output reg q;
input d,clk,rst;

always @(posedge clk) begin
    if(rst)
        q<=1'b0;
    else    
        q<=d;
end


endmodule