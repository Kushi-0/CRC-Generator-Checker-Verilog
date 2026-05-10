module CRC (
    input  [9:0] data_in,     // data+0000 OR data+CRC
    input  mode,              // 0 = Generate CRC
                              // 1 = Check CRC

    output reg [3:0] crc_out,
    output reg error
);

    reg [9:0] temp;
    reg [4:0] divisor;

    integer i;

    always @(*) begin

        temp    = data_in;
        divisor = 5'b10110;

        // XOR Division
        for(i=9; i>=4; i=i-1) begin

            if(temp[i] == 1'b1) begin
                temp[i -: 5] = temp[i -: 5] ^ divisor;
            end

        end

        // remainder
        crc_out = temp[3:0];

        // CHECK MODE
        if(mode == 1'b1) begin

            if(temp[3:0] == 4'b0000)
                error = 0;
            else
                error = 1;

        end

        // GENERATOR MODE
        else begin
            error = 1'bx;
        end

    end

endmodule
