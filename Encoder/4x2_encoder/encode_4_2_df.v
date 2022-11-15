/********************************
    4x2 Encoder - Data Flow
********************************/

module encode_4_2_df (Y,V,I);
input [3:0]I;
input V;
output [1:0]Y;

assign Y = {I[1]|I[0],I[2]|I[0]};
assign V = |I;
    
endmodule

/**
Assuming inputs have only one 1.

    I3  I2  I1  I0  |   Y1  Y0  V
    ----------------|------------
    0   0   0   0   |   X   X   0
    1   0   0   0   |   0   0   1
    0   1   0   0   |   0   1   1
    0   0   1   0   |   1   0   1
    0   0   0   1   |   1   1   1
**/