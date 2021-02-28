

program stimulusNES (
    output logic Reset, nNMI, nIRQ, ready, data, setOvrFlwFlg, write,
    dataBus dataBus0
);

    class instruction;

        rand logic data [7:0];
        rand logic address [15:0];
        rand opcodes::codes opcode;

    endclass

    initial begin
        instruction instruction0 = new;
    
        Reset = 0; nNMI = 1; nIRQ = 1; ready = 1;
        data = 1; setOvrFlwFlg = 0; write = 0;

        repeat (50) begin
            if (instruction0.randomize()) begin
                #30ns;
                dataBus0.D = instruction0.data;
                dataBus0.A = instruction0.address;
                #10ns;
                write = 1;
                #10ns;
                write = 0;
                wait(ready);
            end else
                $display("Randomization failed\n");
            
        end
    end


endprogram