import torch
import torch.nn.functional as F

FRAC_BITS = 8
SCALE = 1 << FRAC_BITS
Q_MAX = (1 << 15) - 1
Q_MIN = -(1 << 15)

def to_fixed(x: torch.Tensor) -> torch.Tensor:
    return (x.float() * SCALE).round().clamp(Q_MIN, Q_MAX).to(torch.int32)

# --- GELU LUT ---
LUT_SIZE = 512
LUT_IN_MIN = -4.0
LUT_IN_MAX = +4.0
lut_inputs = torch.linspace(LUT_IN_MIN, LUT_IN_MAX, LUT_SIZE)
lut_outputs = F.gelu(lut_inputs)
GELU_LUT = to_fixed(lut_outputs)

with open("rtl/gelu.mem", "w") as f:
    for val in GELU_LUT:
        # Convert to 16-bit hex
        hex_val = f"{val.item() & 0xFFFF:04X}"
        f.write(f"{hex_val}\n")

# --- EXP LUT ---
EXP_IN_MIN = -8.0
EXP_IN_MAX = 0.0
exp_inputs = torch.linspace(EXP_IN_MIN, EXP_IN_MAX, LUT_SIZE)
EXP_LUT = to_fixed(torch.exp(exp_inputs))

with open("rtl/exp.mem", "w") as f:
    for val in EXP_LUT:
        hex_val = f"{val.item() & 0xFFFF:04X}"
        f.write(f"{hex_val}\n")

print("Generated rtl/gelu.mem and rtl/exp.mem successfully!")
