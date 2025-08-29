module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] w1;
    wire w2;
    //xor A1(w1,b[31:0],sub);
    assign w1 = b ^ {32{sub}};
    add16 A2(a[15:0],w1[15:0],sub,sum[15:0],w2);
    add16 A3(a[31:16],w1[31:16],w2,sum[31:16],0);
endmodule