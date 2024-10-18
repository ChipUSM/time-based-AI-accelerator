module spi_controller(
  input clk,
  input rst,
  input spi_done,
  input [7:0] spi_dout,
  output reg [7:0] din,
  output reg [7:0] win,
  output reg [7:0] bias
);

  reg [1:0] cS, nS;
  parameter IDLE = 2'b00;
  parameter DIN = 2'b01;
  parameter WIN = 2'b10;
  parameter BIAS = 2'b11;
  reg din_en, win_en, bias_en;

  //state register
  always @(posedge clk, posedge rst) begin
    if(rst) begin
      cS <= IDLE;
      din <= 0;
      win <= 0;
      bias <= 0;
    end else begin 
      cS <= nS;
      case(cS)
        IDLE: din_en <= 1'b1;
        DIN: if(din_en) begin 
               din <= spi_dout;
               din_en <= 1'b0;
               win_en <= 1'b1;
        end 
        WIN: if(win_en) begin
               win <= spi_dout;
               win_en <= 1'b0;
               bias_en <= 1'b1;
        end
        BIAS: if(bias_en) begin
                bias <= spi_dout;
                bias_en <= 1'b0;
                din_en <= 1'b1;
        end
      endcase
    end
  end 

  //next state logic
  always @(*) begin 
    case(cS)
      IDLE: if(spi_done) nS = DIN;
      DIN:  begin
              if(spi_done) nS = WIN;
              //din <= spi_dout;
            end
      WIN:  begin
              if(spi_done) nS = BIAS;
              //win <= spi_dout;
            end
      BIAS: begin
              if(spi_done) nS = DIN;
              //else         nS = IDLE;
              //bias <= spi_dout;
            end
      default: nS = IDLE;
    endcase
  end 


endmodule