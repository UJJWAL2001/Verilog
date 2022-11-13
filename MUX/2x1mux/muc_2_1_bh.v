/**********************************
    2:1 Multiplexer - Behavioural
**********************************/

module mux_2_1_bh(o,i,s);
input [1:0]i;
input s;
output reg o;

always @(*) begin
    if(s)
        o=i[1];
    else 
        o=i[0];
end
    
endmodule