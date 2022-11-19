/**************************
    Basic up Counter
**************************/

module counter_up_basic (count, clk, rst);

input clk, rst ;
output [7:0]count;
reg [7:0]count_temp;

always @(posedge clk) begin
    if(!rst)
        count_temp <= 8'b0;
    else
        count_temp <= count_temp + 1;
end

assign count = count_temp;

endmodule 