module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] A, B, C, D
);

assign A = (Enable && (Sel == 2'b00)) ? In : 4'b0000;
assign B = (Enable && (Sel == 2'b01)) ? In : 4'b0000;
assign C = (Enable && (Sel == 2'b10)) ? In : 4'b0000;
assign D = (Enable && (Sel == 2'b11)) ? In : 4'b0000;

endmodule