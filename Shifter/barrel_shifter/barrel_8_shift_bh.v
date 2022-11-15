/*********************************
  8-bit BARREL SHIFTER BEHAVIORAL
*********************************/

module barrel_8_shift_bh(Out, In, Lr,n);

input [7:0]In;
input [2:0]n;
input Lr;
output reg [7:0]Out;

always@(*) begin
    if(Lr)
        Out = In << n;
    else
        Out = In >> n;
end // always@(*)

endmodule
