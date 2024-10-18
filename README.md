# time-based-AI-accelerator
## Neural Network Hardware Accelerator - 8 Neuron Grid

This repository contains the source code for the design of a hardware accelerator chip that implements an 8-neuron mesh for neural network applications. The chip processes input data by converting it to a time-based format, where the value of the input corresponds to the number of clock cycles. It then performs multiply-accumulate (MAC) operations, passing the results to the next processing stage.

## Features

- **8-Neuron Grid**: A grid topology is used to interconnect 8 neurons for parallel processing.
- **Time-Based Data Encoding**: Inputs are encoded in clock cycles for efficient hardware processing.
- **MAC Operations**: Each neuron performs a multiply-accumulate operation, providing the foundation for neural network computations.

## Background

This design is based on example codes developed by **ChipUSM** and research by **Martin Andreau**, and was created during the **Workshop of the Digital Track** at the **CANELOS 2024** week in Chile. The chip is part of a larger project, where it will be integrated with three other designs in the same tapeout area during the **IHP tapeout** in late November 2024.

<!--## Project Structure

- `src/`: Contains the Verilog/SystemVerilog source files for the 8-neuron hardware accelerator.
- `docs/`: Includes relevant documentation and research references.
- `testbench/`: Testbenches for simulation and verification of the chip design.
- `scripts/`: Automation scripts for synthesis and simulation. -->

## Getting Started

1. Clone the repository:
    ```bash
    git clone https://github.com/ChipUSM/time-based-AI-accelerator.git
    ```

2. Follow the instructions in the `docs/` folder for setting up the simulation environment and verifying the design.

<!--## Contributions

We welcome contributions to enhance this project. Please submit pull requests with clear descriptions of changes or open issues for discussion.-->

<!--## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.-->
## Acknowledgements

Special thanks to **ChipUSM**, **Martin Andreau**, and the **CANELOS 2024** organizers for their contributions and support. This chip is being developed as part of a collaborative effort for the **IHP tapeout** in November 2024.