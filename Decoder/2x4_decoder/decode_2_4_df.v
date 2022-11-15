/**********************************
    2x4 DECODER - Data flow
**********************************/

module decode_2_4_df(Y,I,En);
input [1:0]I;
input En;
output [3:0]Y;

assign Y = {En&I[0]&I[1],
            En&I[0]&~I[1],
            En&~I[0]&I[1],
            En&~I[0]&~I[1]};
    
endmodule