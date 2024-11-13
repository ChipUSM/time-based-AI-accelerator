module rb_dtc(
    input clk, rst,
    input en,
    input [7:0] data_in,
    output reg [7:0] dtc_val
);

always @(posedge clk) begin
    if(rst) begin
        dtc_val <= 0; 
    end
    else if(en) begin
        dtc_val <= data_in;
    end
end

endmodule