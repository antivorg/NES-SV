/*
*   SRAM
*/

module SRAM (
    input logic nWrtieEnable,
    dataBus dataBus0
);

    logic [7:0] memory[10:0];

    always_comb begin : chipSelect
        if (A[15] | A[14] | A[13]) begin
            if (nWriteEnable) begin
                memory[A] = D;
            end else begin
                D = memory[A];
            end
        end
    end

endmodule