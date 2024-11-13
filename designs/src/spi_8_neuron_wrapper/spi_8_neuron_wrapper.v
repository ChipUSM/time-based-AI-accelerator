module spi_8_neuron_wrapper(
    input clk_PAD,
    input rst_PAD,
    input sck_PAD,
    input mosi_PAD,
    input ss_PAD,
    output miso_PAD
);

wire clk;
wire rst;
wire sck;
wire mosi;
wire ss;
wire miso;

sg13g2_IOPadIn sg13g2_clk (
    .p2c(clk),
    .pad(clk_PAD)
);

sg13g2_IOPadIn sg13g2_rst (
    .p2c(rst),
    .pad(rst_PAD)
);

sg13g2_IOPadIn sg13g2_sck (
    .p2c(sck),
    .pad(sck_PAD)
);

sg13g2_IOPadIn sg13g2_mosi (
    .p2c(mosi),
    .pad(mosi_PAD)
);

sg13g2_IOPadIn sg13g2_ss (
    .p2c(ss),
    .pad(ss_PAD)
);

sg13g2_IOPadOut4mA sg13g2_miso (
    .c2p(miso),
    .pad(miso_PAD)
);

spi_8_neuron spi_8_neuron_instance (
  .clk(clk),
  .rst(rst),
  .sck(sck),
  .mosi(mosi),
  .ss(ss),
  .miso(miso)
);

endmodule