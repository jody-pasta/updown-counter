module tb_updown_counter;

reg clk = 0;
reg rst = 0;
reg enable = 0;
reg updown = 1;
wire [3:0] count;

updown_counter uut(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .updown(updown),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, tb_updown_counter);

    rst = 1;
    #10;

    rst = 0;
    enable = 1;
    updown = 1;
    #150;

    rst = 1;
    #10
    
    rst = 0;
    updown = 0;
    #150;
    $finish;


end
endmodule
