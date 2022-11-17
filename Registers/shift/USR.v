/*************************************
    5 bit Universal Shift Register
*************************************/

module USR(PO,SO,sel,clk,rst,PI,SI);
input SI,clk,rst;
input [1:0]sel;
input [4:0]PI;
output reg [4:0]PO;
output SO;

always @(posedge clk) begin
    if(rst)
        PO <= 0;
    else
        case(sel)
            2'b00: PO <= PO; // No Change
            2'b00: PO <= {PO[3:0],SI}; // Left shift
            2'b00: PO <= {SI,PO[4:1]}; // Right shift
            2'b00: PO <= PI; // Parallel out
            default: PO<=0; 
        endcase
end

assign SO = (sel==2'b01)?PO[4]:PO[0];

endmodule