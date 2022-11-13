/**********************************
    2:1 Multiplexer - Data Flow (better)
**********************************/

module mux_2_1_df1(o,i,s);
input [1:0]i;
input s;
output o;

assign o = i[s];
    
endmodule