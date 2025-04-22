module model (
    input [7:0] din,             // Input data to write to memory
    input [2:0] addr,            // 3-bit address (memory has 8 locations)
    input wr,                   // Write enable signal
    input rd,                   // Read enable signal
    input clk,                  // Clock signal
    input resetn,               // Active-low reset signal
    output logic [7:0] dout,    // Output data from memory
    output logic error          // Error signal when both rd and wr are high
);

reg [7:0] mem [0:7];            // 8x8-bit memory array
reg [7:0] out_data;             // Temporary register to hold read data
reg error_out;                  // Temporary register to hold error state
int i;

always @(posedge clk) begin
    if (~resetn) begin
        // Reset memory contents and outputs
        for (i = 0; i < 8; i++) begin
            mem[i] <= 8'b0;
        end
        out_data <= 8'b0;
        error_out <= 1'b0;
    end else begin
        case ({rd, wr})
            2'b00: begin
                // No operation
                out_data <= 8'b0;
                error_out <= 1'b0;
            end
            2'b01: begin
                // Write operation: store din at given addr
                mem[addr] <= din;
                out_data <= 8'b0;
                error_out <= 1'b0;
            end
            2'b10: begin
                // Read operation: load data from addr
                out_data <= mem[addr];
                error_out <= 1'b0;
            end
            2'b11: begin
                // Invalid operation: both read and write enabled
                out_data <= 8'b0;
                error_out <= 1'b1;
            end
            default: begin
                // Defensive default (should never occur)
                out_data <= 8'b0;
                error_out <= 1'b0;
            end
        endcase
    end
end

// Continuous assignments to outputs
always @(*) begin
    dout = out_data;
    error = error_out;
end

endmodule

