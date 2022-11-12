// Behavioural Design of full adder

module FA_bh (
    s,c,a,b,ci
);
input   a,b,ci;
output  reg s,c;

always @(*) begin
    s = a ^ b ^ ci ;            // Sum 
    c = a&b | b&ci | ci&a ;     // Carry
end
    
endmodule