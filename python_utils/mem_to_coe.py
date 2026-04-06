import sys
import os
import glob

def convert_mem_to_coe(mem_file):
    if not os.path.exists(mem_file):
        print(f"Skipping {mem_file} (Not found)")
        return
        
    coe_file = mem_file.replace('.mem', '.coe')
    
    with open(mem_file, 'r') as f:
        # Some mem files have decimal integers, some have hex. 
        # Safely convert everything to pure hex for Vivado.
        lines = f.readlines()
        
    hex_values = []
    for line in lines:
        line = line.strip()
        if not line: continue
        
        # If it's pure decimal (like from np.savetxt)
        try:
            val = int(line)
            # Ensure it's 16-bit hex
            hex_val = f"{val & 0xFFFF:04X}"
        except ValueError:
            # It's already hex (like from generate_luts.py)
            hex_val = line
            
        hex_values.append(hex_val)
        
    # Write Vivado .coe format
    with open(coe_file, 'w') as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        f.write(",\n".join(hex_values))
        f.write(";\n")
        
    print(f"✅ Converted {mem_file} -> {coe_file} ({len(hex_values)} words)")

if __name__ == "__main__":
    print("Converting .mem arrays to Vivado .coe format...")
    # Find all .mem files in project root and rtl/ folder
    mem_files = glob.glob("*.mem") + glob.glob("rtl/*.mem")
    for mf in mem_files:
        convert_mem_to_coe(mf)
