module model #(parameter
  DATA_WIDTH = 32
) (
  input  [DATA_WIDTH-1:0] din,
  input  din_en,
  input  [1:0] addr,
  output logic [DATA_WIDTH-1:0] dout0,
  output logic [DATA_WIDTH-1:0] dout1,
  output logic [DATA_WIDTH-1:0] dout2,
  output logic [DATA_WIDTH-1:0] dout3
);
localparam zero = {DATA_WIDTH{1'b0}};
always@(*) begin
    if(din_en) begin
      case(addr)
      2'd0: begin {dout3,dout2,dout1,dout0} = {zero,zero,zero,din}; end
      2'd1: begin {dout3,dout2,dout1,dout0} = {zero,zero,din,zero}; end
      2'd2: begin {dout3,dout2,dout1,dout0} = {zero,din,zero,zero}; end
      2'd3: begin {{dout3},{dout2},{dout1},{dout0}} = {{din},zero,zero,zero}; end
      endcase
    end
    else {dout3,dout2,dout1,dout0} = '0;
end
endmodule
