module spi_controller(
  input clk,
  input rst,
  input spi_done,
  input [7:0] spi_dout,
  output reg [7:0] din,
  output reg [7:0] win,
  output reg [7:0] bias
);

reg [2:0] state, next_state;
parameter IDLE = 0;
parameter WAIT_DIN = 1;
parameter WRITE_DIN = 2;
parameter WAIT_WIN = 3;
parameter WRITE_WIN = 4;
parameter WAIT_BIAS = 5;
parameter WRITE_BIAS = 6;
reg din_en, win_en, bias_en;

always @(posedge clk, posedge rst) begin
    if(rst) state <= IDLE;
    else state <= next_state;
end

always @(negedge clk, posedge rst) begin
    if(rst) begin
        din <= 0;
        win <= 0;
        bias <= 0;
    end
    else if(din_en) din <= spi_dout;
    else if(win_en) win <= spi_dout;
    else if(bias_en) bias <= spi_dout;
end

always @(*) begin
    din_en = 0;
    win_en = 0;
    bias_en = 0;
    next_state = state;
    case (state)
        IDLE:begin
            next_state = WAIT_DIN;
        end
        WAIT_DIN:begin
            if(spi_done) next_state = WRITE_DIN;
        end
        WRITE_DIN:begin
            din_en = 1;
            next_state = WAIT_WIN;
        end
        WAIT_WIN:begin
            if(spi_done) next_state = WRITE_WIN;
        end
        WRITE_WIN:begin
            win_en = 1;
            next_state = WAIT_BIAS;
        end
        WAIT_BIAS:begin
            if(spi_done) next_state = WRITE_BIAS;
        end
        WRITE_BIAS:begin
            bias_en = 1;
            next_state = IDLE;
        end
        default: next_state = IDLE;
    endcase
end

endmodule