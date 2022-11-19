/**************************
    Load up counter
**************************/

module counter_up_load (count, clk,load, data, rst);
input [7:0] data;
input clk, rst, load;
output [7:0]count;
reg [7:0]count_temp;

always @(posedge clk) begin
    if(!rst)
        count_temp <= 8'b0;
    else if(load)
        count_temp <= data;
    else 
        count_temp <= count_temp + 1;
end

assign count = count_temp;

endmodule 