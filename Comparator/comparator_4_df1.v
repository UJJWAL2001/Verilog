/***********************************
    4-bit Comparator - Data flow
***********************************/

module comparator_4_df1(Eq, Gt, Sm, A, B);
input [3:0]A,B;
output Eq, Gt, Sm;

assign Eq= &(A ~^ B); //A==B
assign Gt = (A[3]& ~B[3]) | ((A[3]~^B[3]) & (A[2]& ~B[2]) ) | ((A[3]~^B[3]) & (A[2]~^B[2]) & (A[1]& ~B[1])) | ((A[3]~^B[3]) & (A[2]~^B[2]) & (A[1]~^B[1]) & (A[0]& ~B[0]));                                                                   
assign Sm= ~(Gt|Eq);

endmodule
