module model (
  input clk,               // System clock
  input resetn,            // Active-low synchronous reset
  output logic div2,       // Output pulse at half the clock frequency
  output logic div4,       // Output pulse at one-fourth the clock frequency
  output logic div6        // Output pulse at one-sixth the clock frequency
);

logic c2;                  // 1-bit counter for divide-by-2
logic [1:0] c4;            // 2-bit counter for divide-by-4
logic [2:0] c6;            // 3-bit counter for divide-by-6

// Synchronous counter logic
always@(posedge clk) begin
  if (!resetn) begin
    // Reset all counters on active-low reset
    c2 <= 0;
    c4 <= 0;
    c6 <= 0;
  end else begin
    c2 <= c2 + 1'b1;               // Toggle every clock => divide by 2
    c4 <= c4 + 1'b1;               // Increments every clock => divide by 4
    c6 <= (c6 + 1'b1) % 6;         // Rolls over every 6 clocks => divide by 6
  end
end

// Output logic based on counter states
always@(*) begin
  div2 = (c2 == 1);                            // High for one clock every 2 clocks
  div4 = (c4 == 1) || (c4 == 2);               // High for 2 out of every 4 clocks
  div6 = (c6 == 1) || (c6 == 2) || (c6 == 3);  // High for 3 out of every 6 clocks
end

endmodule

