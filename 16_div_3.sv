module model (
  input clk,
  input resetn,
  input din,
  output logic dout
);

// State encoding:
// s0 → remainder 0 (divisible by 3)
// s1 → remainder 1
// s2 → remainder 2
// r  → reset state (not considered a valid 0 remainder initially)
parameter s0 = 0, s1 = 1, s2 = 2, r = 3;
reg [1:0] state, next_state;

always @(*) begin
  case(state) 
    // Reset state: transition based on first bit received
    // This prevents treating the reset as already divisible
    r: begin 
      next_state = din ? s1 : s0; 
    end  

    // From s0: 
    // (remainder 0 << 1) + din → remainder depends on din
    s0: begin 
      next_state = din ? s1 : s0; 
    end

    // From s1: 
    // (1 << 1) + din = 2 or 3 → remainder 2 or 0
    s1: begin 
      next_state = din ? s0 : s2; 
    end

    // From s2: 
    // (2 << 1) + din = 4 or 5 → remainder 1 or 2
    s2: begin 
      next_state = din ? s2 : s1; 
    end

    default: begin 
      next_state = s0; 
    end
  endcase
end

// Sequential logic to update state on clock edge
always @(posedge clk) begin
  if (~resetn) begin
    // On reset, go to r state to avoid treating reset as divisible-by-3
    state <= r;
  end
  else begin
    state <= next_state;
  end
end

// Output is high only when current state indicates divisibility by 3
assign dout = (state == s0);

endmodule

