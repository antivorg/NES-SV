/*
*   6502 CPU (2A03)
*
*   NMI - Non-Maskable Interrupt
*   IRQ -  Maskable Interupt
*/

module CPU6502 (
    input logic clock, nReset, nNMI, nIRQ, ready, data, setOvrFlwFlg, mode,
    dataBus dataBus0
);

    // Timing
    logic phi_1, phi_2;
    assign phi_1 = clock;
    assign phi_2 = ~clock;

    // Busses
    logic DB [7:0], SB;
    passMOSFETs passMOSFETsADH (.*);
    passMOSFETs passMOSFETsDB (.*);

    // Registers
    logic statusReg [7:0];
    ioDataLatch ioDataLatch0 (.*);
    indexReg X (.*);
    indexReg Y (.*);
    accumulator accumulator (.*);

    // Decoder
    decoder decoder0 (.*);

    // ALU
    aluREG A (.*);
    aluREG B (.*);
    ADD ADD0 (.*);
    ALU ALU0 (.*);

endmodule
