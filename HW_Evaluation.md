# Vision Transformer (ViT) MLP Hardware Acceleration Report

## Executive Summary
This document evaluates the implementation of the ViT MLP block onto an FPGA (targeting PYNQ-Z2/ZCU-based wrappers). The acceleration utilizes a Dual-Mode (WS/OS) 8x8 Systolic Array paired alongside a pre-computed BRAM GELU interpolation memory, mapping directly onto Q8.8 fixed-point numerical domains.

---

## 1. Resource Utilization
*Extract these values physically from the Xilinx Vivado **Post-Implementation Logic Report** (`report_utilization`).*

| Resource Component | Used | Available (PYNQ-Z2 Baseline) | Percentage (%) |
| :--- | :--- | :--- | :--- |
| **LUTs (Look-Up Tables)** | *TBD* | 53,200 | *TBD* % |
| **FFs (Flip-Flops)** | *TBD* | 106,400 | *TBD* % |
| **BRAMs (18K/36K)** | *TBD* | 140 | *TBD* % |
| **DSPs (MAC units)** | *TBD* | 220 | *TBD* % |

**Analysis**:
The dense utilization of DSPs is strictly constrained by the MAC tree scaling inside the Processing Elements (`pe.v`). The 64K depth `gelu_bram.v` module will consume directly synthesized block RAM elements without stressing surrounding planar LUT configurations.

---

## 2. Performance Tracking: Latency & Throughput
*Latency calculations assume a stable bounding 100MHz (`aclk`) limit running off the ZYNQ Processing Subsystem (PS).*

### Hardware Accelerator Bounds
*   **Clock Frequency**: 100 MHz (estimated conservatively based natively off typical setup).
*   **Systolic Array Block Pipeline**: $N / 8$ sequences parsing the matrix limits cleanly per valid tick.
*   **Total Measured Hardware Latency per Frame**: *TBD* milliseconds (`ms`)
*   **Peak Throughput**: *TBD* Frames per Second (`FPS`)

### Software CPU Baseline
*Run `golden_model.py` traversing 1,000 passes natively on the standard CPU measuring python time overhead constraints.*
*   **Target Standard Processor Limits**: Standard x86 or ARM CPU processing floating point tensors natively.
*   **Total Measured Software Latency per Frame**: *TBD* milliseconds (`ms`)
*   **Baseline Peak Throughput**: *TBD* Frames per Second (`FPS`)

### Speedup Acceleration Metric
$$ Speedup_x = \frac{\text{Software CPU Latency}}{\text{FPGA Hardware Latency}} = X \text{ times faster} $$

---

## 3. Power Analysis
*Run `report_power` from the Vivado Flow Navigator post-routing.*

| Power Footprint Metric | Measurement (Watts) |
| :--- | :--- |
| **Dynamic Power Subsystem (Logic + BRAM + DSP)** | *TBD* W |
| **Static / Device Power** | *TBD* W |
| **Total On-Chip FPGA Power Limits** | *TBD* W |

*The FPGA fundamentally excels over standard processors via dedicated pipelines significantly reducing the absolute thermal limits required to evaluate $D=192$ and $4D=768$ projections.*

---

## 4. Final Conclusion
The implementation of the ViT MLP fixed-point logic in SystemVerilog... *(To be completed evaluating specific hardware routing logic bounds)*.
