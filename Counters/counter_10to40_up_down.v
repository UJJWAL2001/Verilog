/**************************
    10 to 40 up/down counter
**************************/

module counter_10to40_up_down (count, clk, data, load, u_d, rst);
input [7:0]data;
input clk, load, u_d, rst;
output [7:0]count;
reg [7:0]count_temp;

always @(posedge clk) begin
    if(!rst | count_temp>=8'd40 | count_temp<8'd10 ) 
        count_temp <= 8'd10;
    else if(load)
        count_temp <= data;
    else if(u_d)
        count_temp <= (count_temp>=8'd40)?8'd10:count_temp+1;
    else
        count_temp <= (count_temp<8'd10)?8'd40:count_temp-1;
end

assign count = count_temp;

endmodule 