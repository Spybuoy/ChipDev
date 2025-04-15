module model #(parameter
  DATA_WIDTH = 16
) (
  input clk,
  input resetn,
  input [DATA_WIDTH-1:0] din,
  input din_en,
  output logic dout
);
logic [DATA_WIDTH-1:0] temp;

// three if blocks
always@(posedge clk) begin
  // 1 - reset is asserted
  if(~resetn) begin
    temp <= 0; // number shifted is treated as 0
  end
  // 2 - reset is deasserted and din_en is 1
  // load the shifter with din then
  else if (din_en) begin
    temp <= din;
  end
  else begin // 3 - reset is deasserted but din_en is 0
  // shift whatever you have in temp
    temp <= temp>>1;
  end
end
assign dout = temp[0];
endmodule
