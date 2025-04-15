module model #(parameter
  DATA_WIDTH=32
) (
  input  [DATA_WIDTH-1:0] din,
  output logic [DATA_WIDTH-1:0] dout
);
integer i; // int is 2-type and integer is 4-type
always@(*) begin
  for(i=0;i<DATA_WIDTH;i++) begin
    dout[i] = din[DATA_WIDTH-1-i];
  end
end
endmodule
