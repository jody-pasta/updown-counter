module updown_counter (
    input wire clk, rst, enable, updown,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (rst) begin
        count <= 4'd0;
    end else if (enable) begin
        if (updown) begin
            count <= count + 1;
        end else begin
            count <= count - 1;
        end
    end
end

endmodule