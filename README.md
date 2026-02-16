# SALAR Optical Mapping Core

### **S**mart **A**dvanced and **L**ow-cost **A**nalysis & **R**esearch tool for Cardiac Electrophysiology Analysis

  
  

## 📌 Overview

This repository contains the software core for an **Advanced Optical Mapping System** designed for cardiac research. Developed between 2018–2020, this system provides a contactless method to visualize and measure voltage or ion concentration (such as Calcium) in whole hearts or engineered tissues with high spatio-temporal resolution.

  
  

### 🎥 Project Demonstrations

-   [**System Overview & Hardware Physics**](https://www.google.com/search?q=https://www.youtube.com/watch%3Fv%3DSaaeiUGjfys) – Explaining the optical path, dye chemistry, and system architecture.
    
-   **[Software & Algorithm Demonstration](https://www.google.com/search?q=https://www.youtube.com/watch%3Fv%3DoEEGTimo4Ss) – A deep dive into the Delphi-based analysis engine, conduction velocity mapping, and signal processing.**
    

## 🧬 What is Optical Mapping?

_As described by the developer in the project introduction:_

Optical mapping is a cutting-edge electrophysiology technique that replaces physical electrodes with **Fluorescent Dyes**. By loading tissue with voltage-sensitive (e.g., **RH237**) or ion-sensitive (e.g., **Fluo-4 AM**) dyes, we can observe electrical activity as changes in light intensity.

### The Process:

1.  **Dye Loading:** The tissue is perfused with a fluorescent probe.
    
2.  **Excitation:** A high-power, frequency-stable light source (LED-based) excites the dye.
    
3.  **Emission:** The dye emits light proportional to the membrane potential or intracellular calcium concentration.
    
4.  **Detection:** A high-speed CMOS camera captures these variations as a video stream.
    
5.  **Analysis:** This software processes those frames to extract the "Action Potential" of every pixel, generating maps of activation delay and conduction velocity.
    

## 💻 Software Features

The analysis engine is designed to transform raw optical noise into actionable physiological data using advanced Digital Signal Processing (DSP).

### 1. Electrophysiological Calculations

-   **APD80 Detection:** Automatically identifies the point of 80% repolarization (Action Potential Duration) for high-precision timing.
    
-   **Activation Mapping:** Generates heatmaps showing the sequence of electrical firing across the tissue surface.
    
-   **Conduction Velocity (CV):** Uses **Finite Difference** methods to calculate the speed and direction of wave propagation.
    
-   **Vector Field Visualization:** Plots arrows representing the wavefront direction, capable of identifying rotational waves (reentry) and spiral patterns.
    

### 2. Image Processing Pipeline

-   **Super-Pixel Binning:** High-level spatial averaging (e.g., 16x16 or 20x20 grids) to improve Signal-to-Noise Ratio (SNR) in low-light conditions.
    
-   **Temporal Filtering:** Removes high-frequency noise while preserving the rapid upstroke of the Action Potential.
    
-   **Interactive ROI:** Users can right-click any point on the heart to view the specific signal trace for that pixel.
    

### 3. Simulation & Validation

-   Includes simulation modes for horizontal, vertical, and rotational wave patterns to validate the accuracy of the CV algorithms.
    

#### 💻 **Software & Algorithms**

The software is developed in **Delphi 2010**, utilizing native VCL for high-performance UI and data handling. While developed in 2010, the code is compatible with modern versions, and **Delphi RAD 12.0 Community Edition** is recommended for new users.

-   **Zero Dependencies:** Every image processing and signal analysis algorithm—including the **Fast Fourier Transforms (FFT)**, **Finite Difference CV calculations**, and **Digital Filters**—was written from scratch. There are no external libraries or hidden dependencies, ensuring full transparency and portability of the code.
    
-   **APD80 Precision:** Specifically tuned algorithms to detect the 80% repolarization point, providing a robust time-stamp for conduction delay measurements even in noisy optical environments.
    
-   **Benchmarking:** During development, the system was validated and benchmarked using raw data and supplementary materials from the landmark Nature Scientific Reports paper:
    
    > _Lee, P., et al. "Low-Cost Optical Mapping Systems for Panoramic Imaging of Complex Arrhythmias and Drug-Action in Translational Heart Models." Sci Rep 7, 43217 (2017). DOI: 10.1038/srep43217_
    

### 🛠 Development Philosophy

**"First Principles" Engineering:** This software was developed during an intensive R&D period (2018–2020) where the primary goal was the successful implementation of cardiac mapping physics.

-   **Code Style:** The source code follows a "functional-first" approach. It is not optimized for "Clean Code" patterns but is built for **mathematical accuracy and real-time execution.**
    
-   **Pre-processing Suite:** A collection of utility programs is included in the `/Source_PreProcess` folder. these allow for batch image cropping, intensity normalization, and frame preparation—essential steps before the main analysis.
    

**Batch Pre-processing Tools:**

-   **Image Cropping:** Specifically for isolating the ROI (Region of Interest) of the heart or tissue.
    
-   **Intensity Normalization:** Correcting for LED flickering or background fluorescence drift.
    
-   **Frame Extraction:** Tools to convert raw research video formats into processed frame sequences.
    

  
  

## 🔌 Hardware Note

**The hardware section of this system (Smart LED Drivers, Stimulators, and Synchronization Modules) is not currently open-sourced.** The software is designed to interface with high-speed camera systems and synchronized stimulators. I am open to **collaboration, academic cooperation, or commercial inquiries** regarding the full hardware-software stack. If you are interested in the physical implementation or the integrated DAQ system, please feel free to reach out.

## 🔬 Hardware & Acquisition

The **SALAR** suite was developed through two distinct phases of hardware evolution, ensuring the software is robust enough to handle both entry-level high-speed data and scientific-grade imaging.

### 🎥 Supported Imaging Pipelines
The repository is designed for researchers at the **PHOSITA** level (Person Having Ordinary Skill In The Art) who require high temporal resolution for cardiac electrophysiology.

1. **Phase I: Proof of Concept (High-Speed Consumer)**
   - Utilized high-speed consumer digital cameras (e.g., Casio Exilim series at 120Hz).
   - **Software Role:** Our custom **Frame Grabber** (utilizing `TVideograbber`) was essential here to extract and manage frames from standard video containers for raw analysis.

2. **Phase II: Scientific Grade (FLIR Blackfly S)**
   - **Sensor:** FLIR BLACKFLY® S (P/N: BFS-U3-04S2, USB3 Vision).
   - **Optimization:** Developed with a custom mechanical stabilization mount and a **TEC (Thermo-Electric Cooling)** system to minimize thermal noise and maximize Quantum Efficiency (QE).
   - **Acquisition:** While the FLIR utility software handles raw frame capture, the SALAR suite provides the necessary downstream processing to turn that raw data into APD80 and CV maps.

### 🖥️ System Requirements
To handle the massive data throughput of high-speed cardiac imaging:
* **Storage:** High-speed SSD (NVMe recommended) for frame-writing.
* **Processing:** A high-end CPU/RAM configuration to handle 100Hz+ frame-by-frame analysis without bottlenecks.
* **Stable Environment:** For FLIR Blackfly S setups, active cooling (TEC) is highly recommended for long-duration recording to ensure SNR consistency.

## 🛠 Installation & Usage

1.  Clone the repository.
    
2.  Load a sample dataset (simulated files included).
    
3.  Adjust the **Super-Pixel** and **APD** threshold settings.
    
4.  Run the analysis to generate Conduction Velocity maps.
    

#### 📂 **Sample Data**

To allow for immediate testing, the repository includes a `/Samples` folder containing frames extracted from the supplementary videos of the aforementioned Nature article.

1.  Open the software.
    
2.  Direct the file browser to the `/Samples` directory.
    
3.  Configure the **Super-Pixel** size to match the resolution.
    
4.  Run the **CV Vector Mapping** to see the conduction wave in action.
    

## 📜 License

This software is licensed under the **GNU GPL v3**.

## 🎓 Acknowledgments

-   **Developer:** Salar Basiri (Founder/CEO of Idea Land Smart Solution Co.)
    
-   **Institutional Support:** Golestan University of Medical Sciences.
    
-   **Scientific Support:** Professor Vahid Khori.
----



## 🤝 Collaboration & Contact

The **SALAR Optical Mapping Core** is a first-principles implementation designed to make high-end electrophysiology research more accessible. I am open to professional dialogue regarding:

* **Academic Cooperation:** Assisting research labs in implementing or adapting these algorithms for specific cardiac studies.
* **Technical Consulting:** Discussions on the mathematics of Conduction Velocity mapping and signal processing in low-SNR environments.
* **System Design:** Inquiries regarding the synchronization of optical acquisition with external stimulators and DAQ systems.

If you are a researcher or engineer interested in collaborating or discussing this technology, please feel free to reach out directly.

📧 **Email:** [salarbasiri.smart@gmail.com](mailto:salarbasiri.smart@gmail.com)

