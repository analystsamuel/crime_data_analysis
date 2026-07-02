# End-to-End Crime Data Analytics Pipeline

## Project Overview
This project demonstrates a complete data analytics pipeline using SQL and Power BI. The pipeline processes a raw dataset of over 40,000 records, executing data cleaning and validation in SQL before ingesting the refined data into Power BI for executive reporting and public safety tracking.

---

## Data Architecture
The `/Data` directory contains the data lifecycle stages:
* `crime_dataset_india.csv`: The original source file containing over 40,000 records of raw tracking information and structural anomalies.
* `Crime _dataset_india_clean.csv`: The optimized, validated dataset output from the SQL transformation pipeline, used for the BI model.

---

## Phase 1: Data Engineering & Cleaning (SQL)
All data preparation and structural validation were handled within SQL to establish a reliable source of truth before visualization.

Key SQL Operations:
* Staging Environment Isolation: Configured a dedicated staging table (`crime_dataset_staging`) to maintain raw source data integrity.
* Duplicate Validation: Engineered verification queries to check structural anomalies and confirm duplicate thresholds across the dataset.
* Schema Standardization: Adjusted and standardized column data types to ensure seamless integration with data visualization tools.

All transformation scripts are available in the `/SQL` folder.

---

## Data Ingestion & Integration
Following the SQL pipeline validation:
1. The staging data was exported into a structured tabular schema (`Crime _dataset_india_clean.csv`).
2. The clean file was imported into `Crime dashboard.pbix`, preserving data types and constraints established in the database layer.

---

## Phase 2: Analytics & Executive Reporting (Power BI)
The validated dataset was modeled into an interactive Power BI dashboard (`Crime dashboard.pbix`) designed for public safety operational intelligence.

Dashboard Features:
* **Key Performance Indicators**: 
    * Total Crimes: **40.16K**
    * Total Crime Types: **21**
    * Average Duration: **88.06 days**
* **Age Group Victims**: Visualizes incident distribution across Middle Age, Old, Youth, and Children demographics.
* **Most Affected Cities**: Ranked bar chart identifying top regions like Pune and Surat for incident frequency.
* **Most Used Weapons**: A detailed breakdown of incident involvement by weapon type (Knife, Explosives, Firearm, etc.).
* **Case Condition**: A donut chart providing a real-time status split between "Ongoing" (~49.96%) and "Complete" (~50.04%) cases.

Interactive Slicers:
* Dynamic filters enabling users to slice data by **Crime Domain** and **City** for granular, localized analysis.
