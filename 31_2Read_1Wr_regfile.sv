module model #(
    parameter DATA_WIDTH = 16
) (
    input [DATA_WIDTH-1:0] din,
    input [4:0] wad1,
    input [4:0] rad1,
    rad2,
    input wen1,
    ren1,
    ren2,
    input clk,
    input resetn,
    output logic [DATA_WIDTH-1:0] dout1,
    dout2,
    output logic collision
);

  reg [DATA_WIDTH-1:0] mem[32];
  logic collision_;
  logic [DATA_WIDTH-1:0] dout1_, dout2_;

  always @(posedge clk) begin

    if (!resetn) begin
      dout1_ <= '0;
      dout2_ <= '0;
      collision_ <= '0;
      mem <= '{default: '0};
    end else begin
      collision_ <= (wad1 == rad1) || (wad1 == rad2) || (rad1 == rad2);
      if (wen1) begin
        mem[wad1] <= din;
      end
      if (ren1) begin
        dout1_ <= mem[rad1];
      end
      if (ren2) begin
        dout2_ <= mem[rad2];
      end
    end

  end

  always @(*) begin
    collision = collision_;
    dout1 = dout1_;
    dout2 = dout2_;
  end

endmodule
