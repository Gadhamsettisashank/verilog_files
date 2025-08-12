module parity (
    input  [3:0] data_in,
    output       parity_out,
    output       parity_out1

);

  assign parity_out = ^data_in;
  assign parity_out1 = ~^data_in;
endmodule

