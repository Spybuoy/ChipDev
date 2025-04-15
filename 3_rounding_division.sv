module model #(parameter
  DIV_LOG2=3,
  OUT_WIDTH=32,
  IN_WIDTH=OUT_WIDTH+DIV_LOG2
) (
  input [IN_WIDTH-1:0] din,
  output logic [OUT_WIDTH-1:0] dout
);
	// temp is bigger to included overflow @ OUT_WIDTH
	logic [OUT_WIDTH:0] temp;
	// Division + rounding off
	assign temp = din[IN_WIDTH-1:DIV_LOG2] + din[DIV_LOG2-1];
	// Checking if left most is 1 (overflow) then IN_WIDTH-DIVLOG2 else full
	assign dout = (temp[OUT_WIDTH]==1)?(din[IN_WIDTH-1:DIV_LOG2]):(temp);
	
endmodule
