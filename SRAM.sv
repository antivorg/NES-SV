/*
*   SRAM
*/

module SRAM (
    input logic clock,
    dataBus dataBus0
);

    logic [7:0] memory[10:0];

    always_ff @( posedge clock ) begin : readAndWrite
        if (dataBus0.A[15] | dataBus0.A[14] | dataBus0.A[13]) begin : chipSelect
            if (dataBus0.write) begin
                memory[dataBus0.A] = dataBus0.D;
            end else begin
                dataBus0.D = memory[dataBus0.A];
            end
        end
    end

endmodule