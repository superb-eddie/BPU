//visualization: netlistsvg

module comparator #(
    parameter N = 8
) (
    input  logic [N-1:0] a, b,
    // input  logic         prev_eq, prev_greater,
    output logic         eq, greater,
);
    always_comb begin
        eq = (a == b);
        greater = (a > b);
    end

endmodule