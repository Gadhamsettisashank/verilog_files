module tb_parity;

  reg  [3:0] data_in;
  wire       parity_out;
  wire       parity_out1;

  integer i; 
    parity uut (
    .data_in(data_in),
    .parity_out(parity_out),
    .parity_out1(parity_out1)
  );

  initial begin
    $display(" time | data_in | parity_out(odd) | parity_out1(even)");
    $display("------------------------------------------------------");

       for (i = 0; i < 16; i = i + 1) begin
      data_in = i;
      #1; 
      $display(" %4t |  %b  |       %b       |        %b", 
               $time, data_in, parity_out, parity_out1);
    end

    $finish;
  end

endmodule
