# 📂 Sample Data

This folder contains benchmark datasets used to validate the **SALAR** algorithms against peer-reviewed research.

## 🧪 Current Dataset: Nature Scientific Reports

The primary sample included here consists of extracted frames from the following study:

-   **Source:** _Lee et al._ "High-speed imaging of cardiac electrophysiology..." (Nature Scientific Reports).
    
-   **Purpose:** These frames allow users to test the **APD80 detection** and **Conduction Velocity (CV) mapping** features of SALAR using a known, gold-standard dataset.
    
-   **Format:** Provided as a compressed `.zip` for easy download (due to the large number of raw `.bmp` frames).
    

## 🚀 Upcoming Data

I will be updating this repository with additional datasets in the near future, including:

-   **High-Speed Experimental Data:** Sequences captured with the **FLIR Blackfly S** at higher frame rates.
    
-   **Hardware Benchmarks:** Samples showing the difference in SNR when using the **TEC-cooled** mechanical setup.
    

## 📖 Instructions

1.  **Download** the `Benchmark_Sample_Data.zip` file.
    
2.  **Extract** the frames to a local directory.
    
3.  **Load** the directory into the **SALAR Core** to visualize the activation maps.
    

----------

### How to use these samples:

To verify your installation, ensure the SALAR Core correctly identifies the activation wavefronts and calculates the Conduction Velocity values as reported in the original paper.
