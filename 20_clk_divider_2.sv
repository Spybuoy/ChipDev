// much better approach

module clk_divider #(
    parameter N = 4
) (
    input clk,
    input rst_n,
    output logic clk_out
);

  // Calculate bits needed: $clog2(N/2)$
  logic [$clog2(N/2):0] count;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      count   <= '0;
      clk_out <= 1'b0;
    end else begin
      if (count == (N / 2 - 1)) begin
        count   <= '0;
        clk_out <= ~clk_out;  // Toggle the output clock
      end else begin
        count <= count + 1;
      end
    end
  end
endmodule

// module model ( 
//     input clk,
//     input resetn,
//     output logic div2,
//     output logic div4,
//     output logic div6
// );

//   logic [2:0] c2, c4, c6;
//   logic clk2, clk4, clk6;

//   always @(posedge clk) begin

//     if (!resetn) begin
//       c2   <= '0;
//       c4   <= '0;
//       c6   <= '0;
//       clk2 <= 0;
//       clk4 <= 0;
//       clk6 <= 0;
//     end else begin

//       if (c2 == ((2 / 2) - 1)) begin
//         c2   <= '0;
//         clk2 <= ~clk2;
//       end else begin
//         c2 <= c2 + 1'b1;
//       end

//       if (c4 == ((4 / 2) - 1)) begin
//         c4   <= '0;
//         clk4 <= ~clk4;
//       end else begin
//         c4 <= c4 + 1'b1;
//       end

//       if (c6 == ((6 / 2) - 1)) begin
//         c6   <= '0;
//         clk6 <= ~clk6;
//       end else begin
//         c6 <= c6 + 1'b1;
//       end

//     end

//   end
//   always @(*) begin

//     div2 = clk2;
//     div4 = clk4;
//     div6 = clk6;

//   end
// endmodule
