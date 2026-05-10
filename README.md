# CRC Generator & Checker using Verilog HDL

## Overview
This project implements a CRC (Cyclic Redundancy Check) Generator and Checker using Verilog HDL for error detection in digital communication systems.

## Features
- CRC generation using modulo-2 division
- Error detection capability
- Functional verification using testbench
- Simulation and waveform analysis

## Tools Used
- Verilog HDL
- Cadence

## Project Structure
```text
CRC-Generator-Checker-Verilog/
│
├── rtl/
│   └── crc_generator_checker.v
│
├── testbench/
│   └── crc_tb.v
│
├── simulation/
│   └── waveform.png
│
└── README.md
```

## Functionality
1. Generates CRC bits for input data
2. Appends CRC bits to transmitted data
3. Detects corrupted data at receiver side
4. Indicates error status using error flag

## Simulation Result
Waveform analysis verified correct CRC generation and error detection functionality.

## Author
Susmitha
