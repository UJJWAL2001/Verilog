/**************************
    10 to 40 up counter
**************************/

module counter_10_to_40 (count, clk, rst);
input clk, rst;
output [7:0]count;
reg [7:0]count_temp;

always @(posedge clk) begin
    if(!rst | count_temp>=8'd40 | count_temp<8'd10 ) // self correcting
        count_temp <= 8'd10;
    else 
        count_temp <= count_temp + 1 ;
end

assign count = count_temp;

endmodule 