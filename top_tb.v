`timescale 1ns / 1ps
module top_tb();
  wire [7:0]  out;
  reg  [15:0] in;
  reg  [2:0]  addr;
  reg  [2:0]  aBus;
  
  top uut(
    .in(in),
    .addr(addr),
    .aBus(aBus),
    .out(out)
  );

  initial
  begin
    $monitor("Inputs: %b aBus: %b addr: %b OUT: %b",
            in, aBus, addr, out); 
    addr = 3'b111; // Address in pull up - so inverse.
    aBus = 3'b000;
    in = 16'b1010101010101010;
    #10
    in = 16'b1010101010101001;
    #10
    in = 16'b1010101010100110;
    #10
    in = 16'b1010101010011010;
    #10
    in = 16'b1010101001101010;
    #10
    in = 16'b1010100110101010;
    #10
    in = 16'b1010011010101010;
    #10
    in = 16'b1001101010101010;
    #10
    in = 16'b0110101010101010;
    #10
    in = 16'b0101010101010101;
    #10
    in = 16'b1010101010101010;
    #10
    aBus = 3'b001;
    #10
    aBus = 3'b000;
  end
endmodule