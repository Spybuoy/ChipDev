module model #(
    parameter DATA_WIDTH = 8
) (
    input [DATA_WIDTH-1:0] codeIn,
    output reg isThermometer
);

  int i, count;
  always @(*) begin
    count = 0;
    for (i = 1; i < DATA_WIDTH; i++) begin
      if (codeIn[i] != codeIn[i-1]) count++;
    end
    isThermometer = (count == 1'b1);
  end

endmodule
