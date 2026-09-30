<div align="center">

# 🐄 BOVINE HEALTH MONITOR 
### AI-Assisted Early Mastitis Risk Screening Through Milk Analysis

<p>
  <b>A compact, data-driven milk analysis system for early mastitis-risk screening at the point of milking.</b>
</p>

<br>

![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white)
![ESP32](https://img.shields.io/badge/ESP32-IoT-E7352C?style=for-the-badge&logo=espressif&logoColor=white)
![Machine Learning](https://img.shields.io/badge/Machine%20Learning-Scikit--Learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Processing-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Development-2E8B57?style=for-the-badge)

<br>

**Early Detection • Portable • Low-Sample • Data-Driven**

</div>

---

## 📌 Overview

**MilkSense** is a proposed smart milk-analysis system designed to support **early screening for mastitis risk in dairy cattle**.

The system uses a small milk sample and analyzes measurable milk parameters such as:

- **pH**
- **Electrical Conductivity (EC)**
- **Temperature**

The sensor readings are acquired using an **ESP32-based embedded system** and processed through a machine-learning pipeline to generate a simple:

> 🟢 **Normal**  
> 🟠 **Mastitis Risk**

indication.

The objective is to move from periodic manual observation toward **faster, consistent and data-driven screening at the point of milking**.

---

## 🎯 Problem

Mastitis is an important health and productivity concern in dairy farming.

Conventional identification may depend on:

- Visible symptoms
- Manual observation
- Changes in milk appearance
- Clinical examination
- Laboratory-based testing

These approaches may not always provide a convenient way to perform **frequent, on-site screening**.

### The gap

```text
Delayed / Manual Observation
             ↓
     Possible late detection
             ↓
       Increased intervention
             ↓
      Impact on dairy health


💡 Proposed Solution

MilkSense combines milk sensing, embedded data acquisition and machine learning into one workflow.

       🐄 COW
         │
         ▼
   ┌──────────────┐
   │ Milk Sample  │
   └──────┬───────┘
          │
          ▼
 ┌─────────────────────┐
 │ pH │ EC │ TEMP      │
 │     SENSORS         │
 └──────────┬──────────┘
            │
            ▼
       ┌─────────┐
       │  ESP32  │
       └────┬────┘
            │
            ▼
   ┌─────────────────┐
   │ Data Processing │
   └────────┬────────┘
            │
            ▼
     ┌──────────────┐
     │  ML MODEL    │
     └──────┬───────┘
            │
            ▼
    ┌──────────────────┐
    │ Normal / Risk    │
    └──────────────────┘




⚙️ Technical Approach

The complete system is divided into five stages.

01 — Sample

A small milk sample is collected through a soft, detachable sampling interface.

02 — Sense

The milk sample is analyzed for selected measurable parameters:

Parameter	Purpose
pH	Captures changes in milk acidity
Electrical Conductivity	Captures changes associated with ionic composition
Temperature	Provides an additional milk-state measurement
03 — Process

An ESP32 acquires the sensor measurements and prepares them for further analysis.

Sensor Output
      ↓
ESP32
      ↓
Validation
      ↓
Structured Data
04 — Predict

A trained machine-learning classifier receives the processed measurements and identifies patterns associated with the target condition.

pH
EC
Temperature
   ↓
Feature Processing
   ↓
ML Classifier
   ↓
Prediction
05 — Alert

The prediction is converted into a simple screening result:

🟢 NORMAL


🧠 Machine Learning Pipeline

The ML component follows a standard supervised-learning workflow.

Real / Research Dataset
          ↓
    Data Understanding
          ↓
     Data Cleaning
          ↓
   Feature Selection
          ↓
    Train / Test Split
          ↓
    Preprocessing
          ↓
   Model Training
          ↓
      Evaluation
          ↓
   Model Selection
          ↓
   Saved ML Model
          ↓
   Sensor Prediction


Candidate Models

The development pipeline can evaluate multiple classification algorithms, including:

Logistic Regression
Decision Tree
Random Forest
Support Vector Machine
Other suitable classifiers based on dataset characteristics

The final model will be selected based on measured validation performance, rather than assuming a particular algorithm is best beforehand.

📊 Data Strategy

The first stage of development uses an existing mastitis-related dataset to build and validate the ML workflow.

Data preparation includes:
Understanding feature distributions
Identifying missing values
Detecting duplicate observations
Checking class distribution
Removing irrelevant identifiers
Selecting features aligned with the final milk-sensing system
Preventing data leakage
Preparing training and testing datasets
Target

The ML problem is formulated as a binary classification task, where the target represents the health/risk class provided by the selected dataset.

The exact class mapping is verified from the dataset documentation before model training.

🔬 Research Direction

The project is designed around a simple principle:

Measure → Process → Learn → Screen

Instead of relying on a single threshold, the ML component can learn relationships between multiple milk measurements.


                ┌─────────┐
                │   pH    │
                └────┬────┘
                     │
                ┌────▼────┐
                │   EC    │
                └────┬────┘
                     │
                ┌────▼────┐
                │  Temp   │
                └────┬────┘
                     │
                     ▼
              ┌─────────────┐
              │ ML Pipeline │
              └──────┬──────┘
                     │
                     ▼
              Mastitis Risk


🧩 System Architecture

┌──────────────────────┐
│    MILK SAMPLE       │
│                      │
│ pH / EC / Temperature│
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│       SENSORS        │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│        ESP32         │
│ Data Acquisition     │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│   DATA PROCESSING    │
│ Validation / Cleaning│
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│    ML INFERENCE      │
│ Classification Model │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│       OUTPUT         │
│ Normal / Risk        │
└──────────────────────┘


🛠️ Technology Stack


| Layer               | Technology                    |
| ------------------- | ----------------------------- |
| Data Analysis       | Python                        |
| Data Processing     | Pandas, NumPy                 |
| Visualization       | Matplotlib                    |
| Machine Learning    | Scikit-learn                  |
| Embedded Controller | ESP32                         |
| Sensor Interface    | pH / EC / Temperature Sensors |
| Model Development   | Jupyter Notebook              |
| Version Control     | Git + GitHub                  |
| Future Interface    | Web / Mobile Dashboard        |



🌱 Expected Impact
🐄 Early Screening

Supports earlier identification of milk patterns associated with mastitis risk.

⏱ Faster Testing

Enables rapid screening directly at the point of milking.

💰 Practical Hardware

Uses an ESP32 and compact sensors as the foundation for a potentially affordable prototype.

🥛 Milk-Focused Monitoring

Uses measurable milk properties rather than relying only on visible symptoms.

📊 Data-Driven Decisions

Transforms sensor readings into a consistent, interpretable screening output.

📈 Scalable Architecture

The same data and ML pipeline can potentially support multiple animals and repeated observations.

🔐 Important Design Considerations

The system is intended as a screening and decision-support tool, not a replacement for veterinary diagnosis or laboratory confirmation.

Model performance must be established using appropriate validation data.

Particular attention will be given to:

False negatives
Class imbalance
Data leakage
Sensor calibration
Dataset-to-hardware feature alignment
Real-world environmental variation
Generalization to unseen cows


or

🟠 MASTITIS RISK

The result can later be displayed locally or transmitted to a digital interface.


👥 Team
SIH 2026 — Bovine Mastitis Detection
Team BIOHACK 
Tanmay Bhendekar
Deepti Patil
Rasika Mohite
Akshit Kumar
Atharva Ghadge
Ishita Singh


The project combines:

Data Science
      +
Machine Learning
      +
Embedded Systems
      +
Milk Sensing
      +
Practical Dairy Applications


📚 Research Basis

The project direction is informed by published work on:

Machine-learning-based mastitis detection
Milk electrical conductivity
Milk quality indicators
Sensor-based dairy monitoring
IoT-based livestock health monitoring

Datasets and research sources should be cited in the project documentation according to their respective licenses and publication requirements.


⚠️ Disclaimer

MilkSense is a research and prototype system intended for early screening and experimentation.

A machine-learning prediction should not be treated as a confirmed veterinary diagnosis. Suspected cases should be evaluated using appropriate veterinary and diagnostic procedures.

