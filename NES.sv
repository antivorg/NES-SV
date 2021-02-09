/*
*   NES
*
*   - Top level
*/

module NES (
    input logic clock,
    dataBus dataBus0
    // io ports
);

    CPU6502 CPU65020 (.*);
    SRAM SRAMCPU (.*);
    //SRAM SRAMPPU (.*);
    //PPU PPU0 (.*);

endmodule