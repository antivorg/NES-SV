

program stimulusNES (
    output logic Reset, nNMI, nIRQ, ready, data, setOvrFlwFlg, write,
    dataBus dataBus0
);

    class instruction;

        function new();
            rand logic data [7:0];
            rand logic address [15:0];
            rand logic opcode [3:0];
            constraint range {opcode inside [67 /*include other codes to be tested*/]}
        endfunction

    endclass

    initial begin
        logic nReset = 0, nNMI = 1, nIRQ = 1, ready = 1,
        data = 1, setOvrFlwFlg = 0, write = 0;
        instruction a;
        a = new();
        repeat(50) begin
            a.randomize();
            #30ns;
            dataBus0.D = a.data;
            dataBus0.A = a.address;
            #10ns;
            write = 1;
            #10ns;
            write = 0;
            wait(ready);
        end
    end


endprogram