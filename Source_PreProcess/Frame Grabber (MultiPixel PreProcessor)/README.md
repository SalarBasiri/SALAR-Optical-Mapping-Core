# ⚠️ Dependency Notice: TVideoGrabber

The source code in this directory is designed to interface with the **TVideoGrabber** (by Datastead) SDK. 

### 🛑 Important for Compilation:
To protect intellectual property and comply with licensing, the third-party **TVideoGrabber units and libraries are NOT included** in this repository. 

To compile this specific tool:
1. You must have a valid license and the source/binary files for **TVideoGrabber**.
2. Add the TVideoGrabber units to your Delphi library path.
3. If you do not have this component, you can still reference the `.pas` files here to understand the frame-extraction logic and buffer management.

**Note:** The rest of the SALAR Core (APD and CV mapping) does NOT require this component and can be compiled/used independently.