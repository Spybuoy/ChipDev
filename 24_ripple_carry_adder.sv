`include "full_adder.sv"  // Include the full adder module definition

module model #(parameter
    DATA_WIDTH = 8        // Width of the input operands (e.g., 8-bit adder)
) (
    input  [DATA_WIDTH-1:0] a,     // First input operand
    input  [DATA_WIDTH-1:0] b,     // Second input operand
    output logic [DATA_WIDTH:0] sum,      // Final sum output (1 bit wider to accommodate carry-out)
    output logic [DATA_WIDTH-1:0] cout_int // Internal carry-out chain between stages
);

genvar i;
generate
    // Instantiate the first full adder with carry-in = 0
    full_adder inst1 (
        .a(a[0]),
        .b(b[0]),
        .cin(1'b0),
        .sum(sum[0]),
        .cout(cout_int[0])
    );

    // Generate the rest of the full adders for bits 1 to DATA_WIDTH-1
    for(i = 1; i < DATA_WIDTH; i++) begin
        full_adder inst2 (
            .a(a[i]),
            .b(b[i]),
            .cin(cout_int[i-1]), // Connect carry from previous stage
            .sum(sum[i]),
            .cout(cout_int[i])
        );
    end
endgenerate

// Assign the final carry-out as the MSB of the sum
assign sum[DATA_WIDTH] = cout_int[DATA_WIDTH-1];

endmodule

