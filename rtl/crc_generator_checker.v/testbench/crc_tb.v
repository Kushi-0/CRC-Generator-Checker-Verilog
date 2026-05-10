module CRC_tb;

reg  [9:0] data_in;
reg  mode;

wire [3:0] crc_out;
wire error;

CRC dut(
    .data_in(data_in),
    .mode(mode),
    .crc_out(crc_out),
    .error(error)
);

initial begin
  
    // GENERATOR MODE
    
    
    mode    = 0;
    data_in = 10'b1001000000;

    #10;

    $display("time=%0t mode=%b data_in=%b crc_out=%b",
              $time, mode, data_in, crc_out);
  
    // CHECKER MODE (correct)
    
    mode    = 1;
    data_in = 10'b1001001010;

    #10;

    $display("time=%0t mode=%b data_in=%b crc_out=%b error=%b",
              $time, mode, data_in, crc_out, error);

    // CHECKER MODE (error)
    
    data_in = 10'b1001001000;

    #10;

    $display("time=%0t mode=%b data_in=%b crc_out=%b error=%b",
              $time, mode, data_in, crc_out, error);

    $finish;

end

endmodule
