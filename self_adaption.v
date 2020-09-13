%自适应引导滤波模块     
module self_adaption(inmage,rtl,clk,size);

input reg [6:0] inmage;
input rst;
input clk;
output reg size;

reg [7:0] rows0[6:0];
reg [7:0] rows1[6:0];
reg [7:0] rows2[6:0];
reg [7:0] rows3[6:0];
reg [7:0] rows4[6:0];
reg [7:0] rows5[6:0];
reg [7:0] rows6[6:0];

always@(posedge clk,negedge rst) begin
    rows0=rows0/2;
    rows0[6]<=inmage[0];
    rows1=rows1/2;
    rows1[6]<=inmage[1];
    rows2=rows2/2;
    rows2[6]<=inmage[2];
    rows3=rows3/2;
    rows3[6]<=inmage[3];
    rows4=rows4/2;
    rows4[6]<=inmage[4];
    rows5=rows5/2;
    rows5[6]<=inmage[5];
    rows6=rows6/2;
    rows6[6]<=inmage[6];
end



endmodule