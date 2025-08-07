module demux1to2_tb;

reg din;
reg sel;
wire y0, y1;

demux1to2 uut (
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin
    $display("sel din | y0 y1");
    $monitor("  %b   %b  |  %b  %b", sel, din, y0, y1);
    
    din = 0; sel = 0; #10;
    din = 1; sel = 0; #10;
    din = 0; sel = 1; #10;
    din = 1; sel = 1; #10;

    $finish;
end

endmodule
