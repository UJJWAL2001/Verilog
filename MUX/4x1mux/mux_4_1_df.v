/**********************************
    4:1 Multiplexer - Data Flow
**********************************/

module mux_4_1_df(o,i,s);
input [3:0]i;
input s;
output o;

assign o = i[s] ;
    
endmodule