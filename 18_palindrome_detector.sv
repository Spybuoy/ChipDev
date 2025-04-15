module model #(parameter
  DATA_WIDTH=32
) (
  input [DATA_WIDTH-1:0] din,
  output logic dout
);
int i; 
logic [DATA_WIDTH-1:0] rev;
always@(*) begin // Reverse number
  for(i=0;i<DATA_WIDTH;i++) begin
    rev[i] = din[DATA_WIDTH-1-i];
  end
end
// check if reverse and ip are same
assign dout = (din==rev);
endmodule
