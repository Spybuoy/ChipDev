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
always@(*) begin
    if(din_en) begin
      case(addr)
      2'd0: begin dout0 = din; {dout1,dout2,dout3} = '0; end
      2'd1: begin dout1 = din; {dout0,dout2,dout3} = '0; end
      2'd2: begin dout2 = din; {dout1,dout0,dout3} = '0; end
      2'd3: begin dout3 = din; {dout1,dout2,dout0} = '0; end
      endcase
    end
    else begin
      {dout3, dout2, dout1, dout0} = '0;
    end
end
endmodule
