module mux(
    input [7:0] a,b,
    input sel,
    output reg [7:0] y
);

always @(*) begin
    case(sel)
        0: y = a;
        1: y = b;
        default: y = b;
    endcase
end

endmodule