Addressable 8 SPDT Debouncer in Verilog
=====================================================

An addressable debouncer for use with a CPLD / FPGA. 

### Features
* Debounces 8 SPDT buttons.
* Addressable with 3 bit (Giving you 8 devices, or 64 total buttons).

### Notes
* Address select ports should be set for pull-up, connect to ground for "1".
* Address bus is just a normal TTL, 1 = 1.