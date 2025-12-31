# Aero 2 State-Space Control System

This project implements modeling, state-space control, observer design, and output feedback control for the **Aero 2 DC motor system**.  
The work was completed using **MATLAB and Simulink**, and includes both **simulation** and **physical hardware** results.

---

## 📌 Project Overview

The objective of this project is to analyze and control a 1-DoF Aero 2 DC motor using modern control techniques.  
The project progresses from system modeling to full output feedback control.

Key topics covered:
- State-space modeling
- State feedback control
- Pole placement
- Sensing and feedback limitations
- Observer (state estimator) design
- Output feedback control
- Simulation vs physical hardware comparison

---

## ⚙️ System Model

The Aero 2 system is modeled as a second-order state-space system:

\[
\dot{x} = Ax + Bu \\
y = Cx + Du
\]

Where:

```matlab
A = [0 1; -0.5520 -0.0776];
B = [0; 0.0020];
C = [1 0];
D = 0;
