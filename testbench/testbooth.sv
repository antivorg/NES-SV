


module testbooth;

    logic Reset, nNMI, nIRQ, ready, data, setOvrFlwFlg, write;
    dataBus dataBus0 ();

    clockgen clockgen0 (.*);
    NES DUT (.*);
    stimulusNES stimulus (.*);
    // verification

endmodule