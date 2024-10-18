`default_nettype none

module ihp_top (
    input clk_PAD,
    input rst_PAD,
    input trig_PAD,
    input [24:0] chip_in_PAD,
    output [7:0] chip_out_PAD
);
  
  wire clk;
  wire rst;
  wire trig;
  wire [24:0] chip_in;
  wire [7:0] chip_out;

/* clk, rst, trig */
  sg13g2_IOPadIn sg13g2_clk (
      .p2c(clk),
      .pad(clk_PAD)
  );
  sg13g2_IOPadIn sg13g2_rst (
      .p2c(rst),
      .pad(rst_PAD)
  );
    sg13g2_IOPadIn sg13g2_trig (
      .p2c(trig),
      .pad(trig_PAD)
  );

/* inputs */
  sg13g2_IOPadIn sg13g2_chip_in_0 (
      .p2c(chip_in[0]),
      .pad({chip_in_PAD[0]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_1 (
      .p2c(chip_in[1]),
      .pad({chip_in_PAD[1]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_2 (
      .p2c(chip_in[2]),
      .pad({chip_in_PAD[2]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_3 (
      .p2c(chip_in[3]),
      .pad({chip_in_PAD[3]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_4 (
      .p2c(chip_in[4]),
      .pad({chip_in_PAD[4]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_5 (
      .p2c(chip_in[5]),
      .pad({chip_in_PAD[5]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_6 (
      .p2c(chip_in[6]),
      .pad({chip_in_PAD[6]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_7 (
      .p2c(chip_in[7]),
      .pad({chip_in_PAD[7]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_8 (
      .p2c(chip_in[8]),
      .pad({chip_in_PAD[8]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_9 (
      .p2c(chip_in[9]),
      .pad({chip_in_PAD[9]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_10 (
      .p2c(chip_in[10]),
      .pad({chip_in_PAD[10]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_11 (
      .p2c(chip_in[11]),
      .pad({chip_in_PAD[11]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_12 (
      .p2c(chip_in[12]),
      .pad({chip_in_PAD[12]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_13 (
      .p2c(chip_in[13]),
      .pad({chip_in_PAD[13]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_14 (
      .p2c(chip_in[14]),
      .pad({chip_in_PAD[14]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_15 (
      .p2c(chip_in[15]),
      .pad({chip_in_PAD[15]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_16 (
      .p2c(chip_in[16]),
      .pad({chip_in_PAD[16]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_17 (
      .p2c(chip_in[17]),
      .pad({chip_in_PAD[17]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_18 (
      .p2c(chip_in[18]),
      .pad({chip_in_PAD[18]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_19 (
      .p2c(chip_in[19]),
      .pad({chip_in_PAD[19]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_20 (
      .p2c(chip_in[20]),
      .pad({chip_in_PAD[20]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_21 (
      .p2c(chip_in[21]),
      .pad({chip_in_PAD[21]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_22 (
      .p2c(chip_in[22]),
      .pad({chip_in_PAD[22]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_23 (
      .p2c(chip_in[23]),
      .pad({chip_in_PAD[23]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_24 (
      .p2c(chip_in[24]),
      .pad({chip_in_PAD[24]})
  );

/* outputs */
 sg13g2_IOPadOut4mA sg13g2_chip_out_0 (
      .c2p(chip_out[0]),
      .pad(chip_out_PAD[0])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_1 (
      .c2p(chip_out[1]),
      .pad(chip_out_PAD[1])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_2 (
      .c2p(chip_out[2]),
      .pad(chip_out_PAD[2])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_3 (
      .c2p(chip_out[3]),
      .pad(chip_out_PAD[3])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_4 (
      .c2p(chip_out[4]),
      .pad(chip_out_PAD[4])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_5 (
      .c2p(chip_out[5]),
      .pad(chip_out_PAD[5])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_6 (
      .c2p(chip_out[6]),
      .pad(chip_out_PAD[6])
  );

 sg13g2_IOPadOut4mA sg13g2_chip_out_7 (
      .c2p(chip_out[7]),
      .pad(chip_out_PAD[7])
  );

/* grid (neuron) */
grid sg12g2_grid (
    .din(chip_in[7:0]),
    .sign(chip_in[24]),
    .win(chip_in[15:8]),
    .bias(chip_in[23:16]),
    .dout(chip_out[7:0]),
    .trig(trig),
    .clk(clk),
    .rst(rst)
);


endmodule
