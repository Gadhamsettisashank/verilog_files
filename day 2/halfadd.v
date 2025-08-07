
module halfadd (
    input  wire a,       // First input bit
    input  wire b,       // Second input bit
    output wire sum,     // Sum output
    output wire carry    // Carry output
);

    assign sum   = a ^ b; // XOR for sum
    assign carry = a & b; // AND for carry

endmodule
