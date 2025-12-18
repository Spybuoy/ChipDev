module model (
    input clk,
    input resetn,
    input [7:0] din,
    input [7:0] tap,
    output [7:0] dout
);
  logic [7:0] lfsr, tap_;
  logic tap_out;

  always @(posedge clk) begin
    if (~resetn) begin
      lfsr <= din;
      tap_ <= tap;
    end else begin
      lfsr <= {lfsr[6:0], tap_out};
      tap_ <= tap;
    end


  end
  assign dout = lfsr;
  assign tap_out = ^(lfsr & tap_);
endmodule
