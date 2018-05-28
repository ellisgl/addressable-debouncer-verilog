Addressable 8 SPDT Debouncer in Verilog
=====================================================

An addressable debouncer for use with a CPLD / FPGA. 

EDA Playground: https://www.edaplayground.com/x/64qZ

### Features
* Debounces 8 SPDT buttons.
* Addressable with 3 bit (Giving you 8 devices, or 64 total buttons).

### Notes
* Button ports should be set for pull-up.
* Button common should be connected to ground.
* N.C. should be connected to S(et) and N.O. to R(eset), so N.C. to port 0, and N.O. to port 1, and so on.
* Address select ports should be set for pull-up, connect to ground for "1".
* Address bus is just a normal TTL, 1 = 1.
