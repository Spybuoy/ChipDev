module model (
    input [7:0] din,
    input clk,
    input resetn,
    output reg [17:0] dout,
    output reg run
);

  reg [7:0] mem [5:0];
  reg [2:0] cnt;
  reg [15:0] a1b1, a2b2, a3b3;
  int i;
  always @(posedge clk) begin
    if (~resetn) begin
      for (i = 0; i < 6; i++) begin
        mem[i] <= '0;
      end
      cnt <= '0;
    end else begin
      cnt <= (cnt == 5) ? '0 : (cnt + 1'b1);
      mem[cnt] <= din;
    end
  end
  always @(*) begin
    run  = (cnt == 0);
    a1b1 = run ? (mem[0] * mem[3]) : a1b1;
    a2b2 = run ? (mem[1] * mem[4]) : a2b2;
    a3b3 = run ? (mem[2] * mem[5]) : a3b3;
    dout = a1b1 + a2b2 + a3b3;
  end
endmodule
