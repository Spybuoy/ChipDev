module model #(
    parameter DATA_WIDTH = 4
) (
    input clk,
    input resetn,
    output logic [DATA_WIDTH-1:0] out
);

  logic [DATA_WIDTH-1:0] temp;


  always @(posedge clk) begin // counter
    if (~resetn) begin
      temp <= 0;
    end else begin
      temp <= temp + 1'b1;
    end
  end

  assign out = (temp >> 1) ^ temp; // binary to gray
endmodule
