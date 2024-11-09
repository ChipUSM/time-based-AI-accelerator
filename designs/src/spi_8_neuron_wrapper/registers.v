module registers (
    input clk, rst,
    input [7:0] neuron_select,
    input [1:0] select,
    input set_din,
    input set_data_in,
    input [7:0] data_in,
    output [7:0] din,
    output [7:0] sign,  // Single 8-bit vector
    output [7:0] win0, win1, win2, win3, win4, win5, win6, win7,  // Individual inputs for win
    output [7:0] bias0, bias1, bias2, bias3, bias4, bias5, bias6, bias7  // Individual inputs for bias
);

rb rb_0(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[0]),
    .win(win0),
    .bias(bias0),
    .sign(sign[0])
);

rb rb_1(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[1]),
    .win(win1),
    .bias(bias1),
    .sign(sign[1])
);

rb rb_2(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[2]),
    .win(win2),
    .bias(bias2),
    .sign(sign[2])
);

rb rb_3(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[3]),
    .win(win3),
    .bias(bias3),
    .sign(sign[3])
);

rb rb_4(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[4]),
    .win(win4),
    .bias(bias4),
    .sign(sign[4])
);

rb rb_5(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[5]),
    .win(win5),
    .bias(bias5),
    .sign(sign[5])
);

rb rb_6(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[6]),
    .win(win6),
    .bias(bias6),
    .sign(sign[6])
);

rb rb_7(
    .clk(clk), 
    .rst(rst),
    .data_in(data_in),
    .trig(set_data_in),
    .select(select),
    .en(neuron_select[7]),
    .win(win7),
    .bias(bias7),
    .sign(sign[7])
);

rb_dtc rb_dtc_inst(
    .clk(clk), 
    .rst(rst),
    .en(set_din),
    .data_in(data_in),
    .dtc_val(din)
);

endmodule