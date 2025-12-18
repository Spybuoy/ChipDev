module model (
  input clk,
  input resetn,
  input [4:0] init,
  input din,
  output logic seen
);
parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4, s5 = 5;
reg [2:0] state, next_state;
always@(posedge clk) begin
state <= resetn ? next_state : s0;
end
always@(*) begin
case(state)
s0: begin next_state = (din==init[4]) ? s1 : s0; end
s1: begin next_state = (din==init[3]) ? s2 : s1; end
s2: begin next_state = (din==init[2]) ? s3 : s2; end
s3: begin next_state = (din==init[1]) ? s4 : s3; end
s4: begin next_state = (din==init[0]) ? s5 : s4; end
s5: begin next_state = (din==init[4]) ? s1 : s0; end
default: begin next_state = s0; end
endcase
end
assign seen = (state==s5);
endmodule

// All cases do not pass
