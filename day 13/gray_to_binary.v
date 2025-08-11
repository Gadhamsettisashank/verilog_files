module gray_to_binary(
input [3:0]gin,
output[3:0]bout);

assign bout[3]=gin[3];
assign bout[2]=bout[3]^gin[2];
assign bout[1]=bout[2]^gin[1];
assign bout[0]=bout[1]^gin[0];

endmodule
