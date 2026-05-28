`timescale 1ns / 1ps

module ram_tb;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] data_in;
    wire [7:0] data_out;

    // Instantiate RAM
    ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    // VCD file generation
    initial begin
        $dumpfile("ram.vcd");
        $dumpvars(0, ram_tb);
    end

    initial begin
        clk = 0;
        we = 0;
        addr = 0;
        data_in = 0;

        // Write operation
        #10 we = 1; addr = 1; data_in = 8'hAA;

        #10 addr = 2; data_in = 8'h55;

        // Read operation
        #10 we = 0; addr = 1;

        #10 addr = 2;

        #10 $finish;
    end

endmodule
