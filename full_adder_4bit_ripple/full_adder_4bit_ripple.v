/********************************************
    4 Bit Full ripple adder (Structural)
********************************************/

`include "full_adder_df.v"

module full_adder_4bit_ripple(
    s,co,a,b,ci
);

input [3:0]a,b;
input ci;
output [3:0]s;
output co;

wire c1,c2,c3;

full_adder_df fa1(s[0],c1,a[0],b[0],ci);
full_adder_df fa2(s[1],c2,a[1],b[1],c1);
full_adder_df fa3(s[2],c3,a[2],b[2],c2);
full_adder_df fa4(s[3],co,a[3],b[3],c3);

endmodule