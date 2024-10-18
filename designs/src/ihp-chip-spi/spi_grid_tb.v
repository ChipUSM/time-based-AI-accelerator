module spi_grid_tb();
  
  reg clk;
  reg rst;
  reg sck;
  reg mosi;
  reg ss;
  wire miso;
  reg trig;
  reg sign;

  spi_grid spi_grid_instance(
    .clk(clk),
    .rst(rst),
    .sck(sck),
    .mosi(mosi),
    .ss(ss),
    .miso(miso),
    .trig(trig),
    .sign(sign)
  );

  initial begin

    $dumpfile("spi_grid.vcd");
    $dumpvars();

    clk=0;
    sck=0;
    rst=1;
    #30 rst=0;
    ss=1;
    mosi=0;
    #80; ss=0; sign=1;
    #30; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #50; ss=1;

    #50; mosi=0; ss=0;
    #30; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=1;
    #50; ss=1;

    #50; mosi=0; ss=0;
    #30; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=1;
    #50; ss=1;
    #10; trig=1; #50; trig=0;


    #10000 $finish;

  end

  always #5 clk = ~clk;
  always #20 sck = ~sck;


endmodule