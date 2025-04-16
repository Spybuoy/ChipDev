module model (
    input [7:0] din,
    output reg [255:0] dout
);
int i;

always@(*) begin
    dout[0] =1'b1;
    for(i=0;i<255;i++) begin
        if(i<din) begin
            dout[i+1] = 1'b1;
        end
        else begin
            dout[i+1] = 1'b0;
        end
    end
end
endmodule
