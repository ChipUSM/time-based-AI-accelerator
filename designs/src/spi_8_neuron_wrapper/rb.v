module rb (
    input clk, rst,
    input [7:0] data_in,
    input [1:0] select,
    input en,
    input trig,
    output reg [7:0] win,
    output reg [7:0] bias,
    output reg sign
);

always @(posedge clk, posedge rst) begin
    if(rst) begin
        win <= 0;
        bias <= 0;
        sign <= 0;
    end
    else if(en && trig) begin
        if(select == 2'd0) begin
            win <= data_in;
        end
        else if(select == 2'd1) begin
            bias <= data_in;
        end
        else if(select == 2'd2) begin
            sign <= data_in[0];
        end
    end
end

endmodule