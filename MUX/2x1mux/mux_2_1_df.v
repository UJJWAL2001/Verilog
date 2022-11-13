/**********************************
    2:1 Multiplexer - Data Flow
**********************************/

module mux_2_1_df(o,i,s);
input [1:0]i;
input s;
output o;

assign o = s? i[1] : i[0] ;
    
endmodule