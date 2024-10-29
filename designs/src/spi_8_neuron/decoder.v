module decoder(
    input [2:0] id,
    output reg [7:0] neuron_select
);


always @(*) begin
    case(id)
        3'd0: begin
            neuron_select = 8'b00000001;
        end
        3'd1: begin
            neuron_select = 8'b00000010;
        end
        3'd2: begin
            neuron_select = 8'b00000100;
        end
        3'd3: begin
            neuron_select = 8'b00001000;
        end
        3'd4: begin
            neuron_select = 8'b00010000;
        end
        3'd5: begin
            neuron_select = 8'b00100000;
        end
        3'd6: begin
            neuron_select = 8'b01000000;
        end
        3'd7: begin
            neuron_select = 8'b10000000;
        end
        default: neuron_select = 8'b00000001;
    endcase
end

endmodule