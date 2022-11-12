/********************************************
    4 Bit Full ripple adder (Data flow)
********************************************/

module full_adder_4bit_ripple(
    s,co,a,b,ci
);

input [3:0]a,b;
input ci;
output [3:0]s;
output co;

assign {co,s} = a+b+ci;

endmodule