# 📊 End-to-End Crime Data Analytics Pipeline

## 🎯 Project Overview
This portfolio project demonstrates a complete data analytics pipeline across **SQL** and **Power BI**. Taking a raw dataset of over 40,000 records, I built a robust SQL cleaning pipeline to verify data integrity, smoothly ingested that verified data into Power BI, and engineered an executive reporting solution for public safety tracking.

---

## 🗂️ Data Architecture & Datasets
To demonstrate the complete lifecycle of the data, the `/Data` folder contains both versions of the dataset:
* **`crime_dataset_india.csv` (Raw/Dirty Data):** The original source dataset containing over 40,000 records of raw tracking information, unformatted schemas, and structural anomalies.
* **`Crime _dataset_india_clean.csv` (Final Clean Data):** The optimized, validated, and polished dataset output generated after the SQL transformation process, ready for direct BI ingestion.

---

## 🛠️ Phase 1: Data Engineering & Cleaning (SQL)
All heavy data preparation and structural validation were handled entirely using SQL to transition the data from its raw state into a reliable "single source of truth."

### 🔍 What Was Cleaned & Validated in SQL:
* **Staging Environment Isolation:** Created a dedicated staging table (`crime_dataset_staging`) to protect raw source data integrity and prevent altering historical records.
* **Structural Duplicate Validation:** Engineered verification queries using structural scanning to check for anomalies and confirm duplicate thresholds across the 40,000+ rows, ensuring an accurate baseline count.
* **Data Type Realignment & Schema Readiness:** Checked, altered, and standardized data types across columns to ensure numeric fields, tracking strings, and categorical labels align seamlessly for reporting tools.

📂 *All transformation scripts can be found in the `/SQL` folder.*

---

## 🔄 The Bridge: Data Loading & Integration
Once the SQL pipeline verified that the dataset was clean, structured, and accurate:
1. The finalized staging data was exported as a clean tabular schema (`Crime _dataset_india_clean.csv`).
2. This clean table was directly imported into **Power BI Desktop** via the data connector, ensuring zero data loss and maintaining absolute data type integrity from the database layer straight to the reporting canvas.

---

## 🎨 Phase 2: Analytics & Executive Reporting (Power BI)
With the verified dataset loaded, the data was transformed into an interactive, production-ready **Executive Analytics Dashboard** designed to deliver actionable operational intelligence for stakeholders.

### 📊 Dashboard Features & Visualizations:
* **Key Performance Indicators (KPIs):** High-level summary cards showing metrics like **Total Reported Crimes** to give stakeholders an instant operational snapshot.
* **Geospatial Analysis:** Interactive map visuals identifying regional crime distribution and high-density hot spots to support targeted resource allocation.
* **Temporal Trend Analysis:** Line charts displaying crime trends over time (monthly/yearly) to uncover seasonal patterns and long-term systemic shifts.
* **Categorical Breakdown:** Clustered bar charts breaking down the frequencies of specific crime categories to pinpoint the most prevalent offenses.

### 🎛️ Interactive Insights & Slicers:
* Dynamic filters allowing stakeholders to slice the entire report by variables such as **Year**, **Region/State**, and **Crime Type** for deep-dive granular analysis.

📂 *The tracking dashboard file can be found in the `/Power Bi` folder.*
