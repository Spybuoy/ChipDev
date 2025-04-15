module model #(parameter
  DATA_WIDTH = 32
) (
  input  [DATA_WIDTH-1:0] din,
  output logic [$clog2(DATA_WIDTH):0] dout
);
int i;
// $clog2(N) returns number of bits needed to rep N in binary
logic [$clog2(DATA_WIDTH):0] temp; 

always@(*) begin
  // assign 0 to counter
  temp = 0;
  // loop from lowest position and break if 1
  for(i=0;i<DATA_WIDTH;i++) begin
    if(din[i]) begin
      break;
    end
    else begin // inc if 0
      temp++;
    end
  end
  // assign acclimated number to output
  dout = temp;
end
endmodule
