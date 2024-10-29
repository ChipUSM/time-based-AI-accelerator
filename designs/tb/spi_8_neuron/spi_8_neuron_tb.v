module spi_8_neuron_tb ();
reg clk;
reg rst;
reg sck;
reg mosi;
reg ss;
wire miso;

spi_8_neuron spi_grid_instance(
    .clk(clk),
    .rst(rst),
    .sck(sck),
    .mosi(mosi),
    .ss(ss),
    .miso(miso)
);

initial begin

    $dumpfile("designs/results/spi_8_neuron/spi_8_neuron.vcd");
    $dumpvars();

    clk=0;
    sck=0;
    rst=0;
    ss=1;
    mosi=0;
    #40 rst=1;
    #80; ss=0;          //CMD: save w in neuron0
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  // valor
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  //CMD: save b in neuron0
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  // valor 
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  //CMD: save sign in neuron0
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  // valor 
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=1;
    #60; ss=1;

    #60; mosi=0; ss=0;  //CMD: save din
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  // valor 
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=1; ss=0;  //CMD: trigger
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  // valor 
    #40; mosi=0;
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=1; ss=0;  //CMD: ask for result 0
    #40; mosi=1;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #60; mosi=0; ss=0;  // valor 
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #40; mosi=0;
    #60; ss=1;

    #10000 $finish;

  end

  always #5 clk = ~clk;
  always #20 sck = ~sck;


endmodule