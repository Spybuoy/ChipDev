module model #(parameter
  DATA_WIDTH = 16
) (
  input clk,
  input resetn,
  input din,
  output logic [DATA_WIDTH-1:0] dout
);
logic [DATA_WIDTH-1:0] temp;

always@(posedge clk) begin
  if(!resetn) begin // 1 - when reset is asserted, output and temp are '0
    dout <= '0;
    temp <= '0;
  end
  else begin 
    // 2 - when reset is deasserted
    // temp is shifted while temp[0] is assign'd din
    temp <= temp <<1;
    temp[0] <= din;
  end
end
assign dout = temp; // Value assigned after it's resolved in seq block
endmodule
