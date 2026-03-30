# FPGA-Accelerated Vision Transformer (ViT) for Malware Detection

## 🎯 Project Purpose
This project implements a high-performance hardware accelerator on an FPGA to drastically speed up the Multi-Layer Perceptron (MLP) block of a Vision Transformer (ViT). By offloading the most computationally intensive matrix multiplication operations from software (CPU) to dedicated custom RTL hardware, this system achieves profound latency reductions and improved power efficiency. 

The ViT model is specifically trained to classify executable files represented as images (Malware vs. Benignware).

## 🧠 Architecture Overview
The system bridges a standard PyTorch software environment with custom SystemVerilog hardware.

1. **Software Baseline**: A ViT is trained in PyTorch. The learned floating-point weights for the MLP are extracted and quantized down into rigid `Q8.8` Fixed-Point integers.
2. **Systolic Array**: A **Dual-Mode 8x8 Systolic Array** serves as the core compute engine. It dynamically toggles between *Weight-Stationary* (WS) and *Output-Stationary* (OS) modes to safely handle variable intermediate dimensions ($192 \rightarrow 768 \rightarrow 192$).
3. **GELU Approximation**: Non-linear GELU mathematical activations are impossible to synthesize conventionally in standard logic gates. Instead, they are pre-computed into a massive 64K-depth Block RAM (BRAM) Look-Up Table (LUT) for zero-latency integer interpolation.
4. **Zynq Integration**: The architecture is wrapped in an industry-standard **AXI-Stream (AXI4S)** protocol, allowing seamless DMA (Direct Memory Access) bus transfers from the FPGA's ARM processor (PS) directly into the custom silicon fabric (PL).

## 🔄 How It Works

1. **Software Preprocessing**: The project begins in Python where the PyTorch ViT model is trained. Once training reaches convergence, the dense Multi-Layer Perceptron (MLP) weights are extracted, strictly converted into `Q8.8` Fixed-Point representations, and saved as memory (`.mem`) initialization files.
2. **Hardware Streaming Interface**: Active dataset image patches and the pre-computed weights are streamed simultaneously from the Zynq Processing System (ARM CPU) directly into the custom logic block using high-speed parallel AXI Direct Memory Access (DMA) engines.
3. **Systolic Array Compute**: The datastreams feed the custom AXI Wrapper. Instead of sequential CPU operations, a hardware `8x8` grid of internal Processing Elements (PE) perfectly parallelizes the Multiply-Accumulate (MAC) equations. When complex non-linear mathematical functions are required, the array bypasses basic logic gates entirely by instantly looking up exact integer bounds inside a dedicated 64K depth GELU Block RAM mapping.
4. **Output & Verification**: The final computed intermediate representations naturally stream out of the bottom of the array, returning through the DMA. This output is then evaluated against the `golden_model.py` strict integer baseline to absolutely guarantee precision while physically benchmarking the differences in latency, routing resources, and operational power.

## 📂 File Structure Overview

```text
📦 ViT-Malware-Detector
 ┣ 📂 ExeImg_Dataset/        # Raw Image Dataset (Benignware / Malware)
 ┣ 📂 src/
 ┃ ┣ 📂 hdl/                 # Hardware Description Language (RTL)
 ┃ ┃ ┣ 📜 pe.v                     # Processing Element (Single MAC logic block)
 ┃ ┃ ┣ 📜 systolic_array_8x8.v      # Core 64-PE Matrix Multiplication engine
 ┃ ┃ ┣ 📜 gelu_bram.v              # BRAM Memory holding GELU interpolations
 ┃ ┃ ┗ 📜 axi_mlp_wrapper.v        # Top-Level AXI-Stream DMA interface
 ┃ ┣ 📂 sim/                 # Simulation & Verilog Testbenches
 ┃ ┃ ┗ 📜 tb_axi_mlp.v             # Standard automated verification harness
 ┃ ┗ 📂 python/              # Verification Software
 ┃   ┗ 📜 golden_model.py          # Strict integer-only ViT replication script
 ┣ 📜 HW_Evaluation.md       # Benchmarking framework (LUTs/BRAM/DSP/Latency)
 ┣ 📜 model_training.ipynb   # Original PyTorch training and quantization notebook
 ┣ 📜 vit_malware.pth        # Saved PyTorch floating-point model checkpoint
 ┣ 📜 W1.mem / W2.mem        # Exported Fixed-Point hardware memory matrices
 ┣ 📜 gelu.mem               # Physical GELU curve mapped to strict integer bounds
 ┗ 📜 .gitignore             # Standardized git tracking logic
```

## 🚀 How to Run the Project

1. **Verify Software Bounds**:
   Run the `src/python/golden_model.py` script. This will prove the network equations against strict 16-bit hardware truncation rules and dump out the benchmark arrays (`expected_out.mem`).
2. **Simulate RTL**:
   Import `src/hdl/` into Vivado. Add the `src/sim/` testbench and inject the `.mem` files to conclusively prove the Systolic Array RTL outputs match the mathematical Python script *exactly*.
3. **Deploy to FPGA**:
   Package `axi_mlp_wrapper.v` as a custom IP. Create a Block Design linking two AXI DMAs to the Zynq Processing System, route the streams logically, generate a Bitstream, and deploy natively to your PYNQ-Z2 board for latency comparisons!
