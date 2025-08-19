
`timescale 1ns/1ps

module sr_ff_tb;

  reg clk;
  reg rst_n;
  reg s;
  reg r;
  wire q;
  wire q_bar;

   sr_ff u1 (
    .clk(clk),
    .rst_n(rst_n),
    .s(s),
    .r(r),
    .q(q),
    .q_bar(q_bar)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  
  end

    initial begin
    rst_n = 0; s = 0; r = 0;
    #12;                
   rst_n = 1;          

     s = 0; r = 0;
    #10;

     s = 1; r = 0;
    #10;

     s = 0; r = 0;
    #10;

      s = 0; r = 1;
    #10;

      s = 1; r = 1;
    #10;

      $finish;
  end

   initial begin
    $monitor("Time=%0t | rst_n=%b s=%b r=%b | q=%b q_bar=%b", 
              $time, rst_n, s, r, q, q_bar);
  end

endmodule
