module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire w1;
    wire [15:0] w2,w3;
    add16 A1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 A2(a[31:16],b[31:16],0,w2,0);
    add16 A3(a[31:16],b[31:16],1,w3,0);
    
    always@(*)
        begin
    if(w1)
        sum[31:16]=w3;
    else
        sum[31:16]=w2;
        end
endmodule