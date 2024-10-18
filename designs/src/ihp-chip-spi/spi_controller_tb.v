module spi_controller_tb();

  reg clk;
  reg rst;
  reg spi_done;
  reg [7:0] spi_dout;
  wire [7:0] din;
  wire [7:0] win;
  wire [7:0] bias;

  spi_controller dut(.clk(clk),
                     .rst(rst),
                     .spi_done(spi_done),
                     .spi_dout(spi_dout),
                     .din(din),
                     .win(win),
                     .bias(bias)
  );

initial begin

  $dumpfile("spi_controller.vcd");
  $dumpvars();

  clk=0;
  rst=0;
  spi_done=0;
  #10; spi_done=1; spi_dout=127; #5; spi_done=0;
  #49; spi_done=1; spi_dout=12; #5; spi_done=0;
  #49; spi_done=1; spi_dout=1; #5; spi_done=0;
  #49; spi_done=1; spi_dout=16; #5; spi_done=0;
  #20;


  #10 $finish;

end

always #3 clk = ~clk;

endmodule