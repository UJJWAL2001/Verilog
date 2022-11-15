/********************************
    4x2 Encoder - Behavioural 
********************************/

module encode_4_2_bh(Y,V,I);
input [3:0]I;
output reg [1:0]Y;
output reg V;

always@(*) begin
    case (I)
        4'd1: {V,Y}=3'b100;
        4'd2: {V,Y}=3'b101;
        4'd4: {V,Y}=3'b110;
        4'd8: {V,Y}=3'b111;
        4'd0,4'd3,4'd5,4'd6,4'd7,4'd9,4'd10,4'd11,
        4'd12, 1,4'd13,4'd14,4'd15: {V,Y}=3'b000;
        default: $display("error");
    endcase
end

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