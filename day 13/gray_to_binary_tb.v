module gray_to_binary_tb;

reg [3:0]gin;
wire [3:0]bout;

gray_to_binary  u1(.gin(gin),.bout(bout));

initial begin

$monitor(" gray=%0b,binary=%0b",gin,bout);

gin=4'b1000;
#10;
gin=4'b0011;
#10;
gin=4'b1010;
#10;
$finish;
end
endmodule
