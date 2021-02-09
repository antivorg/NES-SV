

module clockgen (
    output logic clock
);

    initial begin
        clock = 0;
        forever begin
            #10ns clock = ~clock;
        end
    end

endmodule