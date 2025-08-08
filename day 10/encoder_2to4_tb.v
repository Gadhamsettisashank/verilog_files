`timescale 1ns/1ps
module tb_encoder4to2;
  reg [3:0] in;
  wire [1:0] out;

  encoder4to2 uut(.in(in), .out(out));

  initial begin
    $display("time   in     out");
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    in = 4'b0000; #10; 
    $finish;
  end

  always #5 $display("%0t   %b   %b", $time, in, out);
endmodule

