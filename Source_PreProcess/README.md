# 🛠️ SALAR Pre-processing Suite

This directory contains the essential tools required to bridge the gap between raw hardware acquisition and the **SALAR Analysis Core**. These utilities ensure that data from various sources is standardized, noise-filtered, and formatted correctly for electrophysiological mapping.

## 📂 Included Utilities

### 1. Video-to-Frame Converter

This is the primary gateway for data captured in standard video containers (AVI/MP4).

-   **Template-Driven:** Includes pre-defined rules for the **Casio EX-ZR1200**, automatically handling the specific resolution and frame-rate combinations used in high-speed research (e.g., 120Hz to 1000Hz).
    
-   **Data Integrity:** Extracts frames to raw formats (BMP/TIFF) to ensure no further compression loss occurs before signal analysis.
    
-   **Scientific Benchmarking:** Used to extract the frame sequences from the Nature (Scientific Reports) benchmark datasets.
    

### 2. ROI & Signal Optimizer

A set of tools for preparing the extracted frames:

-   **Spatial Cropping:** Focus on the cardiac tissue area to reduce processing time and memory overhead.
    
-   **Intensity Normalization:** Adjusts signal levels to ensure consistent thresholding for APD80 detection.
    

----------

## ⚠️ Dependencies & Compilation

### **TVideoGrabber Requirement**

The **Video-to-Frame Converter** utilizes the `TVideoGrabber` (Datastead) SDK for low-level video stream handling.

-   **Note:** The commercial units/DLLs for TVideoGrabber are **not included** in this repository.
    
-   To compile this tool, you must have a valid TVideoGrabber license installed in your Delphi environment.
    
-   **Independent Core:** Please note that the main **SALAR Analysis Core** (APD/CV mapping) does **not** require this dependency and can be used with any raw image sequence.
    

----------

## 🚀 How to Use

1.  **Acquisition:** Capture your data using the FLIR Blackfly S utility or a high-speed camera like the Casio EX-ZR1200.
    
2.  **Conversion:** Run the Converter tool, select your hardware template, and point it to your video file.
    
3.  **Output:** The tool will generate a numbered sequence of frames in a dedicated folder.
    
4.  **Next Step:** Load this folder into the **SALAR Core** for signal processing.
