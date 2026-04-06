import numpy as np
from pynq import Overlay
from pynq import allocate
import time
import cv2

# ==========================================
# ViT-Tiny Q8.8 Hardware Deployment Script
# Run this on your PYNQ-Z2 Board!
# ==========================================

print("Loading ViT Hardware Bitstream...")
# Make sure to upload your Vivado generated files to the board!
# This requires both 'design_1_wrapper.bit' and 'design_1_wrapper.hwh'
overlay = Overlay("design_1_wrapper.bit")

# Bind the hardware blocks to Python variables
dma = overlay.axi_dma_0
gpio_benign = overlay.axi_gpio_0
gpio_malware = overlay.axi_gpio_1

print("Hardware Successfully Loaded!")

def preprocess_image(image_path):
    """
    Loads a 224x224 image, flattens to 1D, and scales to Q8.8 fixed point.
    """
    img = cv2.imread(image_path)
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    img = cv2.resize(img, (224, 224))
    
    # Normalize to [0, 1] standard ViT processing
    img = img.astype(np.float32) / 255.0
    
    # Flatten it into a 1D sequence for the DMA Stream
    img_flat = img.flatten()
    
    # Convert to Q8.8! (Multiply by 256 and cast to int16)
    q8_img = np.round(img_flat * 256.0).astype(np.int16)
    return q8_img

def classify_malware(image_path):
    print(f"\n--- Processing: {image_path} ---")
    
    # 1. Prepare Data
    q8_array = preprocess_image(image_path)
    
    # 2. Allocate Contiguous DMA Memory on the PS
    # Size must match the flat image size (224 * 224 * 3 = 150,528)
    in_buffer = allocate(shape=(len(q8_array),), dtype=np.int16)
    np.copyto(in_buffer, q8_array)
    
    # 3. Fire the DMA (Start sending data to the FPGA Fabric!)
    start_time = time.time()
    
    dma.sendchannel.transfer(in_buffer)
    # Wait for the entire image stream to finish blasting across the AXI Bus
    dma.sendchannel.wait() 
    
    # Optional: If you mapped a read-back channel (S2MM) instead of GPIO, you would trigger:
    # dma.recvchannel.transfer(out_buffer)
    # dma.recvchannel.wait()
    
    calc_time = time.time() - start_time
    
    # 4. Read the Logits back from the GPIO Memory Maps!
    bench_val = gpio_benign.read(0, 0)
    mal_val = gpio_malware.read(0, 0)
    
    # Convert raw 16-bit 2's complement back to float if necessary:
    # Function to handle signed 16-bit
    def to_signed(val):
        return val if val < 32768 else val - 65536
        
    benign_float = to_signed(bench_val) / 256.0
    malware_float = to_signed(mal_val) / 256.0
    
    print(f"FPGA Inference Time: {calc_time*1000:.2f} ms")
    print(f"Logits -> Benign: {benign_float:.2f} | Malware: {malware_float:.2f}")
    
    if malware_float > benign_float:
        print("ALERT: File Classified as MALWARE! ⚠️")
    else:
        print("File Classified as BENIGN. ✅")
        
    # Free the DMA buffer
    del in_buffer

if __name__ == "__main__":
    # Test your accelerator! Simply place a dummy 224x224 malware test image in the directory.
    # classify_malware("test_image.jpg")
    pass
