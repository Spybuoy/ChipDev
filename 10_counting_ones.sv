module model #(parameter
  DATA_WIDTH = 16
) (
  input [DATA_WIDTH-1:0] din,
  output logic [$clog2(DATA_WIDTH):0] dout
);

integer i; 
logic [$clog2(DATA_WIDTH):0] temp;

always@(*) begin
 // Assign initial value to temp as 0
 // make sure not to manipulate \output\
  temp = 0;

  for(i=0;i<DATA_WIDTH;i+=1) begin // watchout for for-loop end
    // if(din[i]) temp = temp + 1'b1; 
    // Can use this += is not supported
    temp += din[i];
  end

  dout = temp;
end

endmodule
