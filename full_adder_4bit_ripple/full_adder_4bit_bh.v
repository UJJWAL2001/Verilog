/********************************************
    4 Bit Full ripple adder (Behavioural)
********************************************/

module full_adder_4bit_ripple(
    s,co,a,b,ci
);

input [3:0]a,b;
input ci;
output reg [3:0]s;
output reg co;

always @(a,b,ci) begin
    {co,s} = a+b+ci;
end

endmodule