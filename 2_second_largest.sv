module model #(parameter
  DATA_WIDTH = 32
) (
  input clk,
  input resetn,
  input [DATA_WIDTH-1:0] din,
  output logic [DATA_WIDTH-1:0] dout
);
reg [DATA_WIDTH-1:0] largest, second;

always@(posedge clk) begin
  if(~resetn) begin // When reset is asserted, turn both to zero
    largest<=0;
    second<=0;
  end
  else if (din>largest && din>second) begin
	/*
	When reset is deasserted
	and din is larger than both of them
	*/
    largest<=din;
    second<=largest;
  end
  else if(din>second) begin
	/*
	When reset is deasserted
	and din is between largest and second 
	*/
    second<=din;
  end
end
assign dout = second;

endmodule
