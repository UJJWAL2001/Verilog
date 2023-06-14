// ALU that can perform only addition with 5 status flags

module ALU_addition(X, Y, Z, Sign, Zero, Carry, Parity, Overflow);
    input [15:0] X, Y;
    output [15:0] Z;
    output Sign, Zero, Carry, Parity, Overflow;

    assign {Carry,Z} = X + Y ; // 16-bit addition : Behavioural
    assign Sign = Z[15];
    assign Zero = ~|Z;
    assign Parity = ~^Z;
    assign Overflow = (X[15] & Y[15] & ~Z[15]) | (~X[15] & ~Y[15] & Z[15]); // For signed magnitude representation.

endmodule