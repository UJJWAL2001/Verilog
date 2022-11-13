/**********************************
    4:1 Multiplexer - Behavioural
**********************************/

module mux_4_1_bh(o,i,s);
input [3:0]i;
input s;
output reg o;

always @(*) begin
    case(s)
        2'd0:   o = i[0];
        2'd1:   o = i[1];
        2'd2:   o = i[2];
        2'd3:   o = i[3];
        default: $display("error"); // can not be synth.
    endcase
end
    
endmodule