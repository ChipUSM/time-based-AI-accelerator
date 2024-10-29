module output_manager(
    input [7:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7,
    input [2:0] output_select,
    output reg [7:0] dout_spi
);

always @(*) begin
    case(output_select)
        3'd0: dout_spi = dout0;
        3'd1: dout_spi = dout1;
        3'd2: dout_spi = dout2;
        3'd3: dout_spi = dout3;
        3'd4: dout_spi = dout4;
        3'd5: dout_spi = dout5;
        3'd6: dout_spi = dout6;
        3'd7: dout_spi = dout7;
    endcase
end

endmodule