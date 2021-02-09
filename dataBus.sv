/*
*   Data Bus
*
*   - netlist of data and instruction flow shared by SRAM, PPU and CPU
*/

interface dataBus;
    wire A[15:0];
    wire D[7:0];
    logic write;
endinterface