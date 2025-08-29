module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire w1;
        add16 A1(a[15:0],b[15:0],0,sum[15:0],w1);
        add16 A2(a[31:16],b[31:16],w1,sum[31:16],0);
endmodule
