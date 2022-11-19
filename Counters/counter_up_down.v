/**************************
    load up/down counter
**************************/

module counter_up_load (count, clk,load, u_d, data, rst);
input [7:0] data;
input clk, rst, load, u_d;
output [7:0]count;
reg [7:0]count_temp;

always @(posedge clk) begin
    if(!rst)
        count_temp <= 8'b0;
    else if(load)
        count_temp <= data;
    else if(u_d)
        count_temp <= count_temp + 1 ;
    else 
        count_temp <= count_temp - 1;
end

assign count = count_temp;

endmodule 