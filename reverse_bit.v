
`default_nettype none
module reverse_bit #(
    parameter WIDTH = 4
) (
    input wire [WIDTH-1:0] in0,
    output wire [WIDTH-1:0] out0
);

    genvar i;
    generate
    for (i = 0; i < WIDTH; i = i + 1) begin
        assign out0[WIDTH-1-i] = in0[i];
    end
    endgenerate

endmodule
`default_nettype wire


