# 📊 40,000+ Row Indian Crime Data Analytics Pipeline

## 🎯 Project Overview
This repository showcases an end-to-end data cleaning and business intelligence solution. Using a raw dataset containing over 40,000 records of crime data from India, I engineered a robust 5-stage SQL cleaning pipeline to standardize structures, handle temporal formatting anomalies, and optimize the schema for an interactive Power BI executive dashboard.

## 🛠️ Tech Stack & Skills Demonstrated
* **SQL (MySQL / Relational Database):** Data Isolation, Common Table Expressions (CTEs), Window Functions, Datetime Parsing (`STR_TO_DATE`), Schema Modification (`ALTER`/`DROP`).
* **Power BI Desktop:** Star schema data modeling and executive-level trend visualization.

---

## ⚡ Step-by-Step Data Cleaning Pipeline (SQL)

### 🔹 STAGE 1: Establishing a Staging Environment
To preserve data integrity, I isolated the raw source dataset by creating a dedicated staging table (`crime_dataset_staging`). All subsequent destructive transformations were executed safely within this environment.

### 🔹 STAGE 2: Deduplication Integrity Check
Leveraged an advanced Common Table Expression (CTE) combined with the `ROW_NUMBER()` window function. I partitioned the data across critical operational dimensions—including temporal markers (`Date Reported`, `Date of Occurrence`, `Time of Occurrence`), regional factors (`Police Deployed`), and descriptive metrics (`crime description`)—to check for and isolate redundant records.

### 🔹 STAGE 3: Data Quality & Null Value Assessment
Executed structured aggregation scans utilizing conditional `CASE WHEN` logic to audit the density of missing values, blank strings, and structural gaps across critical field profiles such as `Crime Description`.

### 🔹 STAGE 4: Temporal Schema Optimization & Feature Engineering
The raw dataset stored temporal data as inconsistent text strings. I implemented schema modifications to transition these into high-performance, indexable structural data types:
* Generated separate, optimized `DATE` and `TIME` tracking features using `str_to_date()` transformations.
* Standardized formatting matrices across both reporting instances and true occurrence windows.
* Cleansed the database footprint by systematically dropping original unoptimized text blocks via `ALTER TABLE ... DROP COLUMN`.

### 🔹 STAGE 5: Structural Standardization
Ran categorical distinct profiling on regional boundaries (`city`), incident fields (`crime description`), and institutional categories (`Crime Domain`) to guarantee cross-column standard structural uniformity before exporting the data for visualization.

### 🔹 STAGE 6: Final Verification & Quality Assurance
Concluded the pipeline by executing comprehensive global table scans (`SELECT *`). This step served as a manual QA gate to visually verify that all structural changes, new date/time column splits, and data standardizations were applied flawlessly across all 40,000+ rows before exporting the clean dataset to Power BI.
