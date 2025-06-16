# 🏥 Health Care Analysis Dashboard

## 📌 Project Summary

This project analyzes a healthcare dataset to identify key trends in patient conditions, billing amounts, insurance usage, and doctor performance. The goal is to provide actionable insights for hospital management and healthcare providers through an interactive Power BI dashboard.

## 🔧 Tools Used

* **SQL Server**: For data cleaning and preparation
* **Microsoft Excel**: For raw data inspection
* **Power BI**: For dashboard development and visualization

## 📊 Dataset Overview

* **Source**: Synthetic
* **Format**: Excel (`Healthcare Dataset.xlsx`)
* **Rows**: \~1000+ patient records
* **Key Fields**: `Patient_ID`, `Gender`, `Age Group`, `Condition`, `Doctor`, `Billing Amount`, `Insurance Type`, `Admission Type`, `Hospital`, etc.

### 🔎 Data Cleaning (SQL)

Performed with `healthcare_dataset_cleaning.sql`:

* Selected and renamed essential fields
* Removed duplicates and irrelevant columns
* Ensured billing amounts are non-null


## 📊 KPIs Tracked

* Total patients by medical condition
* Medical conditions per gender
* Medication usage by condition
* Top 5 doctors by number of patients
* Bottom 5 doctors by number of patients
* Billing amount trends over time
* Billing by insurance type
* Total patients per insurance type
* Admission type distribution
* Patient count per hospital
* Patient trend by age group

## 🧠 Key Insights

* **Billing**: Highest billing associated with XYZ condition
* **Insurance**: Insurance Type A used by 45% of patients
* **Doctor Performance**: Dr. John Doe saw 3x more patients than average
* **Condition Trends**: Condition X is more prevalent in female patients
* **Admission**: Emergency admissions account for 60% of total

## 👁️ Dashboard Preview

![Dashboard PDF](/dashboard/healthcare_dashboard.pdf)

### Download / View

* [Power BI File (.pbix)](./dashboard/healthcare_dashboard.pbix)
* [PDF Version of Dashboard](./dashboard/healthcare_dashboard.pdf)

## 🗃️ Folder Structure

```
HEALTH-CARE-ANALYSIS-DASHBOARD/
├── README.md
├── healthcare_dataset_cleaning.sql
├── data/
│   ├── Healthcare Dataset.xlsx
│   └── Healthcare_cleaned.csv
├── dashboard/
│   ├── healthcare_dashboard.pbix
│   └── healthcare_dashboard.pdf

```


---

**Author**: Favour J. | [LinkedIn](https://www.linkedin.com/in/Favour-Jokparose) | [GitHub](https://github.com/Favour-j)

*Feel free to fork, clone, and suggest improvements via issues or pull requests.*



