`timescale 1ns / 1ps

module ripple_carry_tb;
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    ripple_carry uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        
        $display("Time\t a\t b\t cin => sum\t cout");

        
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b => %b\t %b", $time, a, b, cin, sum, cout);

        a = 4'b0011; b = 4'b0101; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b => %b\t %b", $time, a, b, cin, sum, cout);

        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b => %b\t %b", $time, a, b, cin, sum, cout);

        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        $display("%0t\t %b\t %b\t %b => %b\t %b", $time, a, b, cin, sum, cout);

        a = 4'b1111; b = 4'b1111; cin = 1; #10;
        $display("%0t\t %b\t %b\t %b => %b\t %b", $time, a, b, cin, sum, cout);

        $finish;
    end
endmodule
