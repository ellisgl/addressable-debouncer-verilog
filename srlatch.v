`timescale 1ns / 1ps
/*
 * SR-Latch
 */
module srlatch(
  input S,
  input R,
  output Q,
  output Qn
);
  nor (Q, R, Qn);
  nor (Qn, S, Q);
endmodule