module model #(
    parameter FIZZ = 3,
    BUZZ = 5,
    MAX_CYCLES = 100
) (
    input clk,
    input resetn,
    output logic fizz,
    output logic buzz,
    output logic fizzbuzz
);

  logic [$clog2(MAX_CYCLES)-1:0] counter;
  logic [$clog2(FIZZ)-1:0] fizz_c;
  logic [$clog2(BUZZ)-1:0] buzz_c;

  always @(posedge clk) begin

    if (!resetn || (counter == MAX_CYCLES - 1)) begin
      counter <= '0;
      fizz_c  <= '0;
      buzz_c  <= '0;
    end else begin
      counter <= (counter + 1'b1);
      fizz_c  <= (fizz_c == FIZZ - 1) ? '0 : (fizz_c + 1'b1);
      buzz_c  <= (buzz_c == BUZZ - 1) ? '0 : (buzz_c + 1'b1);
    end
  end

  always @(*) begin

    fizz = (fizz_c == 0);
    buzz = (buzz_c == 0);
    fizzbuzz = fizz && buzz;

  end

endmodule
