module model #(parameter
  DATA_WIDTH = 16 // Parameterizable width of Gray and Binary code
) (
  input  [DATA_WIDTH-1:0] gray, // Input Gray code
  output logic [DATA_WIDTH-1:0] bin // Output Binary code
);

// Temporary variable to hold intermediate binary values
logic [DATA_WIDTH-1:0] temp;
int i;

always @(*) begin
  // Convert Gray code to Binary code
  // Formula: bin[i] = XOR of all bits from gray[i] to gray[DATA_WIDTH-1]
  for (i = 0; i < DATA_WIDTH; i++) begin
    // Shift gray by i and XOR all bits starting from position i to the MSB
    temp[i] = ^(gray >> i);
  end
end

// Assign the final binary result
assign bin = temp;

endmodule

