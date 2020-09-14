%卷积模块    kkk
module conv(clk,row0,row1,row2,row3,row4,row5,row6,out);

input [7:0] rows0[6:0];
input [7:0] rows1[6:0];
input [7:0] rows2[6:0];
input [7:0] rows3[6:0];
input [7:0] rows4[6:0];
input [7:0] rows5[6:0];
input [7:0] rows6[6:0];
input clk;
output reg [9:0] out[6:0];
reg [1:0] operator_h [8:0];
initial begin
    operator_h[0]=2'd1;
    operator_h[1]=2'd0;
    operator_h[2]=2'd1;
    operator_h[3]=2'd2;
    operator_h[4]=2'd0;
    operator_h[5]=2'd2;
    operator_h[6]=2'd1;
    operator_h[7]=2'd0;
    operator_h[8]=2'd1;
end

always@(posedge clk) begin
    out[0] = operator_h[8]*rows0[2]-operator_h[6]*rows0[0];
    out[1] = operator_h[8]*rows1[2]-operator_h[6]*rows1[0]+operator_h[2]*rows0[2]-operator_h[0]*rows0[0];
end

endmodule