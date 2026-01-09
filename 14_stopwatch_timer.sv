module model #(
    parameter DATA_WIDTH = 16,
    MAX = 99
) (
    input clk,
    input reset,
    start,
    stop,
    output logic [DATA_WIDTH-1:0] count
);
  logic increment;

  always @(posedge clk) begin

    if (reset) begin
      increment = 0;
      count <= '0;
    end else begin

      if (start) begin
        increment = 1'b1;
      end

      if (stop) begin
        increment = 1'b0;
      end

      if (increment) begin
        count <= (count == MAX) ? '0 : (count + 1'b1);
      end else begin
        count <= count;
      end

    end


  end

endmodule
