`timescale 1ns / 1ps
/*
 * 3 bit address select
 */

module addrselect(
  input  [2:0] addr, // The set address
  input  [2:0] aBus, // Adress from buss
  output enable      // Enabled?
);

 
  assign enable = (aBus == ~addr) ? 1 : 0;
endmodule