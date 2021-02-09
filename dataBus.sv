/*
*   Data Bus
*
*   - netlist of data and instruction flow shared by SRAM, PPU and CPU
*/

interface dataBus;
    logic A[15:0];
    logic D[7:0];
endinterface