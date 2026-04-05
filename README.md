# ViT-Tiny Malware Classifier & FPGA Accelerator

This repository contains the software pipeline and reference models for deploying a Vision Transformer (ViT) on an FPGA accelerator. The target application is image-based malware classification (Benign vs. Malware) using a quantized, fixed-point custom hardware design.

## Project Scope & Contents

This repository is strictly scoped to the training, quantization, and architectural design of the accelerator. It serves as the "Golden Reference" for the RTL implementation.

Files included in this repository:
* `model_training.ipynb`: PyTorch script that fine-tunes a `timm` ViT-Tiny (`vit_tiny_patch16_224`) on the malware dataset.
* `vit_malware.pth`: The trained float32 PyTorch weights.
* `W1.mem` / `W2.mem`: Hardware-ready Q8.8 fixed-point integer memory files mapping to the Multilayer Perceptron (MLP) weights of the first Transformer block.
* `vit_fixed_point_q8_8.ipynb`: A completely re-written, integer-only Q8.8 Python implementation of the ViT that mimics the exact behavior of the target FPGA data-flow.

## Architecture

The base model is a **ViT-Tiny** configured for $224 \times 224$ patches of size 16.
* **Embed Dimension:** 192
* **Transformer Blocks:** 12
* **Attention Heads:** 3 ($64$ dims per head)
* **MLP Hidden Size:** 768

## Fixed-Point (Q8.8) Hardware Design

To reduce power and logic utilization on the FPGA, the entire model is quantized to a 16-bit fixed-point format (`Q8.8`). `vit_fixed_point_q8_8.ipynb` proves that the network maintains mathematical stability and classification accuracy when operating purely on integers.

### Hardware Datapath Rules
1. **Weight Storage:** 16-bit signed integers (Q8.8 range `[-128, +127.996]`).
2. **MAC Registers (Systolic Array):** Dot products must accumulate in 32-bit integer registers to prevent overflow. They are arithmetic-shifted right by 8 (`>> 8`) and clipped back to 16 bits *only* after accumulation is complete.
3. **GELU Non-Linearity:** Approximated using a 512-entry Look-Up Table (LUT) mapped to 9-bit addresses, covering an effective input range of `[-4.0, +4.0]`.
4. **Softmax:** Uses a subtract-max normalization followed by a 512-entry Exponential LUT mapped to inputs between `[-8.0, 0.0]`. Division is performed via low-precision fixed point.

## Verifying the RTL
The floating point model is **not** the target for RTL verification. Due to the compounding rounding errors of sequential fixed-point MACs, RTL output should drift from Float32. 

**Testing Strategy:** Testbenches must pass image data into the Verilog simulation and assert that the internal memory state and output logits perfectly match the integer tensors output by the `FxViT` class inside `vit_fixed_point_q8_8.ipynb`.
