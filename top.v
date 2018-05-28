`timescale 1ns / 1ps
`include "srlatch.v"
`include "addrselect.v"
`include "tristate8port.v"

module top(
  input  [15:0] in,   // 8 SPDT inputs
  input  [2:0]  addr, // Chip Address 0-7
  input  [2:0]  aBus, // Address bus
  output [7:0]  out   // Debounced outputs
);
  wire [7:0] srout;
  wire       enable;

  // Set up our SR-Latch debouncers
  srlatch srl0(
    .R(in[0]),
    .S(in[1]),
    .Qn(srout[0])
  );
  
  srlatch srl1(
    .R(in[2]),
    .S(in[3]),
    .Qn(srout[1])
  );

  srlatch srl2(
    .R(in[4]),
    .S(in[5]),
    .Qn(srout[2])
  );

  srlatch srl3(
    .R(in[6]),
    .S(in[7]),
    .Qn(srout[3])
  );

  srlatch srl4(
    .R(in[8]),
    .S(in[9]),
    .Qn(srout[4])
  );

  srlatch srl5(
    .R(in[10]),
    .S(in[11]),
    .Qn(srout[5])
  );

  srlatch srl6(
    .R(in[12]),
    .S(in[13]),
    .Qn(srout[6])
  );

  srlatch srl7(
    .R(in[14]),
    .S(in[15]),
    .Qn(srout[7])
  );
  
  // Address select enable
  addrselect as(
    .addr(addr),
    .aBus(aBus),
    .enable(enable)
  );
  
  // Tri-state output
  tristate8port ts8(
    .enable(enable),
    .in(srout),
    .out(out)
  );
  
endmodule