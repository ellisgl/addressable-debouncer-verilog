`timescale 1ns / 1ps
/*
 * 8 port Tri-state buffer
 */

module tristate8port (
  input        enable,
  input  [7:0] in,  
  output [7:0] out  
);

  assign out = (enable) ? in : 8'bzzzzzzzz;
endmodule