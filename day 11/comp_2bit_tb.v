`timescale 1ns/1ps

module comp_2bit_tb;
    reg  [1:0] A, B;           
    wire A_gt_B, A_eq_B, A_lt_B; 

        comp_2bit u1 (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $display("Time |  A   B  | A_gt_B A_eq_B A_lt_B");
        $display("------------------------------------");

        // Manually test all combinations
        A = 2'b00; B = 2'b00; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b00; B = 2'b01; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b00; B = 2'b10; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b00; B = 2'b11; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b01; B = 2'b00; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b01; B = 2'b01; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b01; B = 2'b10; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b01; B = 2'b11; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b10; B = 2'b00; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b10; B = 2'b01; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b10; B = 2'b10; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b10; B = 2'b11; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b11; B = 2'b00; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b11; B = 2'b01; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b11; B = 2'b10; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        A = 2'b11; B = 2'b11; #5;
        $display("%4t | %2b  %2b |    %b      %b      %b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        $stop; 
    end
endmodule
