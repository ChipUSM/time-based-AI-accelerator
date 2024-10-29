module spi_grid(
  input clk,
  input rst,
  input sck,
  input mosi,
  input ss,
  output miso,
  input trig,
  input sign
);

  wire done_iw;
  wire clk_out1;
  wire rst_neg;
  assign rst_neg = ~rst;

  wire [7:0] din_iw, dout_iw;
  wire [7:0] din_controller, win_controller, bias_controller;

  spi spi_instance(
    .clk(clk_out1),
    .rst(rst_neg),
    .ss(ss),
    .mosi(mosi),
    .miso(miso),
    .sck(sck),
    .done(done_iw),
    .din(din_iw),
    .dout(dout_iw)
  );

  spi_controller spi_controller_instance(
    .clk(clk_out1),
    .rst(rst_neg),
    .spi_done(done_iw),
    .spi_dout(dout_iw),
    .din(din_controller),
    .win(win_controller),
    .bias(bias_controller)
  );

  grid grid_instance(
    .din(din_controller),
    .sign(sign),  
    .win(win_controller),
    .bias(bias_controller),
    .dout(din_iw),
    .trig(trig),
    .clk(clk_out1),
    .rst(rst_neg),
    .dtc_out(dtc_out)
);

clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk_out1),     // output clk_out1
   // Clock in ports
    .clk_in1(clk)      // input clk_in1
);

endmodule