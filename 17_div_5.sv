module model (
  input clk,
  input resetn,
  input din,
  output logic dout
);

// State encoding:
// s0 → remainder 0 (divisible by 5)
// s1 → remainder 1
// s2 → remainder 2
// s3 → remainder 3
// s4 → remainder 4
// r  → reset state (special case to prevent false "divisible" signal at reset)
parameter r = 3'd6, s0 = 3'd0, s1 = 3'd1, s2 = 3'd2, s3 = 3'd3, s4 = 3'd4;
reg [2:0] state, next_state;

// Combinational logic for next state
always @(*) begin
  case(state)
    // Reset state: transition based on first input bit
    // Ensures FSM doesn't falsely claim divisibility by 5 immediately on reset
    r: begin 
      next_state = din ? s1 : s0; 
    end

    // From s0: (0 << 1) + din = 0 or 1 → s0 or s1
    s0: begin 
      next_state = din ? s1 : s0; 
    end

    // From s1: (1 << 1) + din = 2 or 3 → s2 or s3
    s1: begin 
      next_state = din ? s3 : s2; 
    end

    // From s2: (2 << 1) + din = 4 or 5 → s4 or s0
    s2: begin 
      next_state = din ? s0 : s4; 
    end

    // From s3: (3 << 1) + din = 6 or 7 → s1 or s2
    s3: begin 
      next_state = din ? s2 : s1; 
    end

    // From s4: (4 << 1) + din = 8 or 9 → s3 or s4
    s4: begin 
      next_state = din ? s4 : s3; 
    end

    default: begin 
      next_state = s0; 
    end
  endcase
end

// Sequential logic for state transition on positive clock edge
always @(posedge clk) begin
  if (~resetn) begin
    // On reset, go to special 'r' state to avoid misinterpreting the start
    state <= r;
  end
  else begin
    state <= next_state;
  end
end

// Output high only if current state represents "divisible by 5" (remainder 0)
assign dout = (state == s0);

endmodule

