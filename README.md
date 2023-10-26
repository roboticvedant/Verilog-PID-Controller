# PID Controller in Verilog for FPGA and ASIC Applications

## Overview

This repository houses a PID (Proportional-Integral-Derivative) controller, implemented in Verilog, suitable for FPGA and ASIC applications. PID controllers are pivotal in control theory, and they are used in myriad applications, including those that are time-sensitive. The project aims to serve as a basis for sophisticated control systems where fine-grained control and real-time operation are essential.

## Features

- 16-bit arithmetic for high-precision control.
- Configurable `Kp`, `Ki`, `Kd` coefficients to adapt to various systems.
- Clock prescaling feature to adjust the controller's sampling rate.
- Includes a testbench simulating a generic linear system for validation.
  
## Current Areas of Focus

1. **Robustness**: Ongoing efforts are focused on making the PID controller more robust to cater to different environmental conditions and systems.

2. **Model Predictive Control**: An additional layer of Model Predictive Control (MPC) is under development, aiming to provide optimal control in complex systems.

3. **Standardized Test Stimulus**: Work is in progress to create a standardized testbench stimulus that simulates a common linear system for more rigorous testing and validation.

## Code Structure

The main Verilog module `pid_controller` takes care of the PID calculations:

- `clk`, `rst_n`: Clock and Reset signals.
- `setpoint`, `feedback`: Control variables.
- `Kp`, `Ki`, `Kd`: PID coefficients.
- `clk_prescaler`: Clock prescaler for adjustable sampling rate.
- `control_signal`: Output control signal.

The `pid_tb` (testbench) module provides a simulated environment to validate the PID controller. It includes the feedback system and allows for adjustments to the `Kp`, `Ki`, `Kd` coefficients and `clk_prescaler` to test the controller in different scenarios.

## Applications in Time-Sensitive Systems

1. **Automated Manufacturing**: In industrial settings where machinery needs to respond in real-time.
2. **Telecommunications**: For latency-critical applications such as real-time packet routing.
3. **Robotics and Drones**: Where fast and precise control is necessary for stabilization and movement.
4. **Healthcare Devices**: In medical instruments like infusion pumps and ventilators where precision and speed are critical.

## Getting Started

### Dependencies

- Xilinx Vivado for synthesizing the design (optional for FPGA deployment)
- A Verilog simulator like ModelSim for simulation and testing

### Running the Project

1. Clone this repository.
2. Open the `.xpr` file in Xilinx Vivado if you are planning to synthesize for FPGA.
3. To run the simulation, open the project in a Verilog simulator and execute the testbench.

## Contributing

Contributions to enhance the functionality are most welcome. Fork this repository and create a pull request or open an issue for discussion.

## License

This project is licensed under the MIT License. For more information, see [LICENSE.md](https://github.com/roboticvedant/Verilog-PID-Controller/blob/main/LICENSE).


