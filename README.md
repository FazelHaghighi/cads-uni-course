# Computer-Aided Digital System Design Course Projects

This repository contains various digital system design projects that were undertaken for the Computer-Aided Digital System Design (CADS) course. Below is an overview and detailed explanation of each project module, alongside the final project which implements a direct mapped cache.

## Project Modules

### 1. D Flip-Flop (DFF)
The DFF module is a fundamental sequential logic circuit that stores and stabilizes a single bit of data. This digital flip-flop is edge-triggered and changes state in synchronization with the clock input.

### 2. D Latch
This module contains the design for a D Latch, which is used to store a single data bit when the enable (EN) signal is asserted. Unlike DFF, a latch is level-triggered and responds to changes in data inputs whenever EN is high.

### 3. Finite State Machine (FSM)
The FSM module designed is a conceptual representation of an abstract machine that can be in exactly one of a finite number of states at any given time. It can change from one state to another in response to external inputs.

### 4. Full Adder
Here we have implemented a Full Adder in two styles:

#### Behavioral
Implemented using behavioral modeling, it simulates a single-bit adder's logic with carry-in and carry-out bits, using HDL constructs that represent high-level behavior.

#### Structural
Designed using structural modeling, it directly represents the logical gate structure of a full adder circuit and is a more hardware-near representation.

### 5. Multiplexer (Mux)
A Multiplexer or Mux module is designed here to select one of the several input signals and forwards the selected input into a single line based on selection lines.

### 6. Register
This module implements a register, a small area of fast storage within the CPU. It holds data or instructions that are being worked on immediately.

### 7. Shift Register
The Shift Register module is capable of shifting the data stored in it, to the right.

### 8. Package
A VHDL package is provided containing definitions for common logic components and constants that are reused in another project.

### Final Project: Direct Mapped Cache
The final project involves designing a Direct Mapped Cache system. This cache is a type of mapping technique where each block of main memory maps to exactly one cache line.

## Project Organization

The repository is divided into several directories, each corresponding to a specific project module. Here is how the structure looks like:

```
.
├── cache
│   ├── cache_project.pdf
│   ├── cache.vhd
│   ├── ram.vhd
│   └── SystemTop.vhd
├── delayed_or
│   └── delayed_or.vhd
├── DFF
│   ├── DFF.vhd
│   └── Dlatch.vhd
├── Dlatch
│   └── Dlatch.vhd
├── FSM
│   ├── FSM_testbench.vhd
│   └── FSM.vhd
├── full_adder_4_bit
│   ├── full_adder_4_bit.vhd
│   ├── full_adder.vhd
│   └── with_select.vhd
├── full_adder_behavioral
│   ├── adder_1_bit.vhd
│   ├── case_when.vhd
│   ├── when_others.vhd
│   └── with_select.vhd
├── full_adder_implemental
│   └── full_adder.vhd
├── generic_adder
│   ├── generic_adder.vhd
│   └── with_select.vhd
├── mux
│   ├── generic_mux_2x1.vhd
│   ├── generic_mux_4x1.vhd
│   ├── generic_mux_8x1.vhd
│   ├── mux_2x1.vhd
│   └── mux_4x1.vhd
├── my_package
│   ├── mux_21.vhd
│   └── my_package.vhd
├── reg
│   ├── DFF.vhd
│   ├── Dlatch.vhd
│   └── reg.vhd
├── regN
│   ├── DFF.vhd
│   ├── Dlatch.vhd
│   ├── regN.vhd
│   └── reg.vhd
└── shift_reg
    ├── shift_reg.vhd
    └── tb_shift_reg.vhd

```
