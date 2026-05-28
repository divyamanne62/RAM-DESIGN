module ram (
    input clk,
    input we,                     // Write Enable
    input [3:0] addr,             // 4-bit address
    input [7:0] data_in,          // 8-bit input data
    output reg [7:0] data_out     // 8-bit output data
);

    // Memory declaration: 16 locations of 8-bit each
    reg [7:0] memory [15:0];

    always @(posedge clk)
    begin
        if (we)
            memory[addr] <= data_in;   // Write operation

        data_out <= memory[addr];      // Read operation
    end

endmodule
