module model #(parameter
  DATA_WIDTH = 32
) (
  input  [DATA_WIDTH-1:0] din,
  output logic onehot
);

int i;
int temp; 
// DONOT ASSIGN VALUES OUTSIDE ALWAYS BLOCK
always@(*) begin
  temp = 0;
  for(i=0;i<DATA_WIDTH;i++) begin
    
    // can use if, but avoid conditionals if you can
    // especially for clk'd blocks, here it doesn't matter
    // if(din[i]) temp++;
    
    // onehot = ($countones(din) == 1);
    temp += din[i];
  end
  onehot = (temp==1);
end

endmodule
