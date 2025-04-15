module model #(parameter
  DATA_WIDTH=32
) (
  input clk,
  input resetn,
  output logic [DATA_WIDTH-1:0] out
);
logic [DATA_WIDTH-1:0] l, r;

always@(posedge clk) begin
  if(~resetn) begin // at reset set l, r to 1
    l<=1; r<=1;
  end
  else begin // else add l to r, and assign r to l
    r<=l+r;
    l<= r;
  end
end

assign out = l; // assign l to output pin
endmodule
