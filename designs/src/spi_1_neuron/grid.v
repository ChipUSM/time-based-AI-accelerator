module grid (
    input [7:0] din,
    input sign,  // Single 8-bit vector
    input [7:0] win,  // Individual inputs for win
    input [7:0] bias,  // Individual inputs for bias
    output [7:0] dout,  // Individual outputs
    input trig,
    input clk,
    input rst
);

    wire s_dtc_out;
    wire s_sign_x;

    // Instantiate dtc_wabs
    dtc_wabs dtc_instant (
        .din(din),
        .dtc_out(s_dtc_out),
        .din_sign(s_sign_x),
        .trig(trig),
        .clk(clk),
        .rst(rst)
    );

    // Instantiate neuron_wxor for each of the 8 instances, passing individual signals
    neuron_wxor neuron_instant_0 (
        .tac_in(s_dtc_out),
        .sign_x(s_sign_x),
        .sign_w(sign),  // LSB of sign vector
        .win(win),
        .bias(bias),
        .dout(dout),
        .clk(clk),
        .rst(rst)
    );

endmodule
