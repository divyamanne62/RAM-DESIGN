# RAM-DESIGN

Synchronous RAM Design Using Verilog HDL
This project implements a Synchronous RAM using Verilog HDL. The design was developed and simulated using Visual Studio Code, Icarus Verilog, and GTKWave.
Features
- Synchronous Read and Write Operations
- Clock-based Memory Access
- Verilog HDL Implementation
- Waveform Verification using GTKWave

Tools Used
- Visual Studio Code
- Icarus Verilog
- GTKWave

Files Included
- ram.v
- ram_tb.v
- Waveform Screenshot
Commands 
- ## How to Run
   ```bash
   iverilog -o ram_out ram.v ram_tb.v
   vvp ram_out
   gtkwave ram.vcd

