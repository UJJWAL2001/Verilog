module full_adder_df (
    s,co,a,b,ci
);
input a,b,ci;
output s,co;

assign s = a ^ b ^ ci ;
assign co = a&b | b&ci | ci&a ;

endmodule