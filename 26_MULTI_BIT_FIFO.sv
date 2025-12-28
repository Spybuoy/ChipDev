module model #(
    parameter DATA_WIDTH = 8
) (
    input clk,
    input resetn,
    input [DATA_WIDTH-1:0] din,
    input wr,
    output logic [DATA_WIDTH-1:0] dout,
    output logic full,
    output logic empty
);

  localparam FIFO_DEPTH = 2;

  reg [DATA_WIDTH-1:0] fifo_mem[FIFO_DEPTH];
  always @(posedge clk) begin
    if (!resetn) begin
      fifo_mem <= '{default: '0};
      dout <= '0;
      full <= '0;
      empty <= '1;
    end else begin
      full <= ((din != '0) && (fifo_mem[0] != '0) && (fifo_mem[1] != '0));
      empty <= ((fifo_mem[0] == '0) && (fifo_mem[1] == '0));
      fifo_mem[0] <= wr ? din : fifo_mem[0];
      fifo_mem[1] <= wr ? fifo_mem[0] : fifo_mem[1];
    end
  end
  assign dout = fifo_mem[0];


endmodule
