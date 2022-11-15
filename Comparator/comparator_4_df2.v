/***********************************
    4-bit Comparator - Data flow(better)
***********************************/

module comparator_4_df2(Eq, Gt, Sm, A, B);
input [3:0]A,B;
output Eq, Gt, Sm;

assign Eq = (A==B);
assign Gt = (A>B);
assign Sm = (A<B);
// Alternative 
// assign {Eq,Gt,Sm} = {A==B,A>B,A<B};

endmodule
