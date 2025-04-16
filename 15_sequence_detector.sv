module model (
  input clk,            // Clock input
  input resetn,         // Active-low synchronous reset
  input din,            // Serial data input
  output logic dout     // Output: 1 when "1010" sequence is detected
);

//////////////////////////////////////////////////////
// State Encoding using localparams (stronger scoping)
//////////////////////////////////////////////////////
localparam r     = 3'd0,   // Reset / Idle state
           s1    = 3'd1,   // Received '1'
           s10   = 3'd2,   // Received '10'
           s101  = 3'd3,   // Received '101'
           s1010 = 3'd4;   // Received full '1010' sequence

//////////////////////////////////////////////////////
// State Registers
//////////////////////////////////////////////////////
reg [2:0] state, next_state;  // 3 bits are enough to encode 5 states (0–4)

//////////////////////////////////////////////////////
// Next-State Logic (Combinational)
//////////////////////////////////////////////////////
always @(*) begin
  case (state)
    r:      next_state = (din) ? s1    : r;
    s1:     next_state = (din) ? s1    : s10;
    s10:    next_state = (din) ? s101  : r;
// ** Watch out for overlap/non-overlap. This is overlapping
    s101:   next_state = (din) ? s1    : s1010; 
// ** If next_state for s1010 is r, then it's non-overlapping
// ** i.e, reset after dout = 1.
    s1010:  next_state = (din) ? s101  : r;
    default:next_state = r;
  endcase
end

//////////////////////////////////////////////////////
// State Transition Logic (Sequential)
//////////////////////////////////////////////////////
always @(posedge clk) begin
  if (~resetn)
    state <= r;
  else
    state <= next_state;
end

//////////////////////////////////////////////////////
// Output Logic (Moore FSM)
//////////////////////////////////////////////////////
assign dout = (state == s1010);  // Output is high only when '1010' is detected

endmodule

