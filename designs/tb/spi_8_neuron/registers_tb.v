`timescale 1ns/1ps

module tb_register();

  // Señales del DUT (Device Under Test)
  reg clk;
  reg rst;
  reg [8:0] neuron_select;
  reg [1:0] select;
  reg [7:0] data_in;
  
  wire [7:0] din;
  wire [7:0] sign;
  wire [7:0] win0, win1, win2, win3, win4, win5, win6, win7;
  wire [7:0] bias0, bias1, bias2, bias3, bias4, bias5, bias6, bias7;

  // Instancia del módulo bajo prueba
  register uut (
    .clk(clk),
    .rst(rst),
    .neuron_select(neuron_select),
    .select(select),
    .data_in(data_in),
    .din(din),
    .sign(sign),
    .win0(win0), .win1(win1), .win2(win2), .win3(win3),
    .win4(win4), .win5(win5), .win6(win6), .win7(win7),
    .bias0(bias0), .bias1(bias1), .bias2(bias2), .bias3(bias3),
    .bias4(bias4), .bias5(bias5), .bias6(bias6), .bias7(bias7)
  );

  // Variables para los bucles
  integer i;
  integer j;

  // Generador de reloj
  always #5 clk = ~clk;

  // Inicialización del testbench
  initial begin
    // Inicialización
    clk = 0;
    rst = 1;
    neuron_select = 0;
    select = 0;
    data_in = 0;

    // Archivo VCD para la simulación
    $dumpfile("designs/results/spi_8_neuron/registers.vcd");
    $dumpvars(0, tb_register);

    // Reset del sistema
    #10;
    rst = 0;

    // Test: Iterar sobre todas las neuronas
    for (i = 0; i < 9; i = i + 1) begin
      neuron_select = 1 << i;  // Activa solo una neurona a la vez

      // Iterar sobre las señales 'select' para cada neurona
      for (j = 0; j < 3; j = j + 1) begin
        select = j;
        
        // Asignar un valor aleatorio a data_in
        data_in = $random;

        // Esperar para permitir que el valor se registre
        #10;
        
        // Mostrar los valores de las señales en la simulación
        $display("Neuron %d, Select %d, Data_in: %h, din: %h, sign: %h", i, j, data_in, din, sign);
      end
    end

    // Finalizar simulación
    $finish;
  end
endmodule
