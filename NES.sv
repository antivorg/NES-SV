/*
*   NES
*
*   - Top level
*/

module NES (
    input logic clock,
    // io ports
);

    CPU6502 CPU65020 (.*);
    SRAM SRAMCPU (.*);
    SRAM SRAMPPU (.*);
    PPU PPU0 (.*);
    dataBus dataBus0 ();

endmodule