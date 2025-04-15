module model #(parameter
  DATA_WIDTH = 16,
  MAX = 99
) (
    input clk,
    input reset, start, stop,
    output logic [DATA_WIDTH-1:0] count
);

logic [DATA_WIDTH-1:0] temp;
logic incr;

always@(posedge clk) begin

  if(reset) begin // increment and counter both 0 at reset
    // increment should remain 1 even if count reaches MAX
    // hence (temp==MAX) is excluded from this block
    temp<=0; incr <= 0; 
  end
  else begin
    // at stop, you avoid increment, temp<=temp increases drivers 
    if(stop) begin incr<=0; end
    // if start or incr (remains 1 once started) incr count and check for MAX
    else if(start || incr) begin incr<=1; temp<=(temp==MAX)?0:temp+1'b1; end
  end
end
assign count = temp;
endmodule
