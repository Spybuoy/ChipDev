module model (
  input clk,        // Clock signal
  input resetn,     // Active-low synchronous reset
  input din,        // Input signal to monitor for rising edge
  output dout       // Output pulse on rising edge
);

logic temp, out;

always @(posedge clk) begin
  if (~resetn) begin
    // On reset: clear the output and the temp register
    out <= 0;
    temp <= 0;
  end
  else begin
    // Rising edge detection logic
    // 'out' goes high (1) only when 'din' is 1 and the previous value (temp) was 0
    out <= ~temp & din;
    
    // Store the current din value for comparison in the next cycle
    temp <= din;
  end
end

// Assign internal signal 'out' to the output port 'dout'
assign dout = out;

endmodule

