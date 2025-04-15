module model #(parameter
  DATA_WIDTH = 4
) (
  input clk,
  input resetn,
  output logic [DATA_WIDTH-1:0] out
);
integer i;
logic [DATA_WIDTH-1:0] q, temp;

always@(posedge clk) begin // counter
  if(~resetn) begin
    temp<=0;
    q<=1; // this is delayed assignment, need q to be 1 to avoid 0,0,1...
  end
  else begin
    q<=q+1;

    for(i=0;i<DATA_WIDTH-1;i++) begin
      temp[i] <= q[i+1] ^ q[i]; // abc, b xor c 
    end

    temp[DATA_WIDTH-1] <= q[DATA_WIDTH-1]; // a
  end
end
assign out = temp; // assign logic/reg to output
// avoid changes to output variables

endmodule
