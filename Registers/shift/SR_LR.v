/**********************************
    5 bit Shift register (<-)
    Async. Reset - Active low
**********************************/

module SR_LR(SO,clk,rst,SI);
input SI,clk,rst;
output SO;
reg [4:0]SR;

always @(posedge clk, negedge rst)
    if(!rst)
        SR<=5'b0;
    else
        SR<= {SR[3:0],SI};

assign SO = SR[4];

endmodule