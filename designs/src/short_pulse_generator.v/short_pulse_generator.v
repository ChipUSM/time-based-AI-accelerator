// sch_path: /workspaces/usm-vlsi-tools/shared_xserver/TO202410_IHP_TDBuck/xschem/short_pulse_generator.sch
module short_pulse_generator
(

);
wire net10 ;
wire net11 ;
wire net12 ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire net8 ;
wire net9 ;

iopin
p1 ( 
);


iopin
p2 ( 
);


iopin
p3 ( 
);


iopin
p4 ( 
);


iopin
p5 ( 
);


lab_pin
p12 ( 
);


lab_pin
p13 ( 
);


lab_pin
l39 ( 
);


lab_pin
p14 ( 
);


lab_pin
p15 ( 
);


lab_pin
p7 ( 
);


lab_pin
p8 ( 
);


large_delay_v1p1
x10 ( 
 .VCC( net9 ),
 .VSS( net10 ),
 .VIN( net11 ),
 .VOUT( net12 )
);


lab_pin
l1 ( 
);


sg13g2_inv_1
x1 ( 
);


lab_pin
p6 ( 
);


sg13g2_inv_1
x2 ( 
);


sg13g2_inv_1
x3 ( 
);


sg13g2_inv_1
x4 ( 
);


sg13g2_inv_2
x5 ( 
);


sg13g2_inv_8
x6 ( 
);


sg13g2_and2_2
x7 ( 
);


sg13g2_and2_2
x8 ( 
);

endmodule

// expanding   symbol:  large_delay_v1p1.sym # of pins=4
// sym_path: /workspaces/usm-vlsi-tools/shared_xserver/TO202410_IHP_TDBuck/xschem/large_delay_v1p1.sym
// sch_path: /workspaces/usm-vlsi-tools/shared_xserver/TO202410_IHP_TDBuck/xschem/large_delay_v1p1.sch
module large_delay_v1p1
(
  inout wire VCC,
  inout wire VSS,
  inout wire VIN,
  inout wire VOUT
);
wire net1 ;
wire net2 ;


lab_pin
p6 ( 
);


lab_pin
p7 ( 
);


iopin
p4 ( 
);


iopin
p5 ( 
);


iopin
p1 ( 
);


iopin
p2 ( 
);


sg13g2_dlygate4sd3_1
x1_0 ( 
);


sg13g2_dlygate4sd3_1
x1_1 ( 
);


sg13g2_dlygate4sd3_1
x1_2 ( 
);


sg13g2_dlygate4sd3_1
x1_3 ( 
);


sg13g2_dlygate4sd3_1
x1_4 ( 
);


sg13g2_dlygate4sd3_1
x1_5 ( 
);


sg13g2_dlygate4sd3_1
x1_6 ( 
);


sg13g2_dlygate4sd3_1
x1_7 ( 
);


sg13g2_dlygate4sd3_1
x1_8 ( 
);


sg13g2_dlygate4sd3_1
x1_9 ( 
);


sg13g2_dlygate4sd3_1
x1_10 ( 
);


sg13g2_dlygate4sd3_1
x1_11 ( 
);


sg13g2_dlygate4sd3_1
x1_12 ( 
);


sg13g2_dlygate4sd3_1
x1_13 ( 
);


sg13g2_dlygate4sd3_1
x1_14 ( 
);


sg13g2_dlygate4sd3_1
x1_15 ( 
);


sg13g2_dlygate4sd3_1
x1_16 ( 
);


sg13g2_dlygate4sd3_1
x1_17 ( 
);


sg13g2_dlygate4sd3_1
x1_18 ( 
);


sg13g2_dlygate4sd3_1
x1_19 ( 
);


sg13g2_dlygate4sd3_1
x1_20 ( 
);


sg13g2_dlygate4sd3_1
x1_21 ( 
);


sg13g2_dlygate4sd3_1
x1_22 ( 
);


sg13g2_dlygate4sd3_1
x1_23 ( 
);


sg13g2_dlygate4sd3_1
x1_24 ( 
);


sg13g2_dlygate4sd3_1
x1_25 ( 
);


sg13g2_dlygate4sd3_1
x1_26 ( 
);


sg13g2_dlygate4sd3_1
x1_27 ( 
);


sg13g2_dlygate4sd3_1
x1_28 ( 
);


sg13g2_dlygate4sd3_1
x1_29 ( 
);


sg13g2_dlygate4sd3_1
x1_30 ( 
);


sg13g2_dlygate4sd3_1
x1_31 ( 
);


sg13g2_dlygate4sd3_1
x1_32 ( 
);


sg13g2_dlygate4sd3_1
x1_33 ( 
);


sg13g2_dlygate4sd3_1
x1_34 ( 
);


sg13g2_dlygate4sd3_1
x1_35 ( 
);

endmodule
