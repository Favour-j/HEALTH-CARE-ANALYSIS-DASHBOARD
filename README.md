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
🧠 Business Insight Summary
This Power BI dashboard reveals critical insights across hospital operations, patient demographics, and financial trends. Below are key findings grouped by category:

### 👨‍⚕️ Doctor Performance
- **Dr. Michael Smith** and **Dr. John Smith** handled the highest number of patients — possibly due to department demand or workload imbalance.
- Patient volume varies widely even within the same hospital, suggesting inefficient patient allocation.

**📌 Recommendation:** Audit doctor assignments and redistribute workloads to balance care delivery and reduce burnout.

### 🏥 Hospital Utilization
- **Houston Methodist Hospital** saw the highest patient volume by far.
- In contrast, hospitals like **New York Presbyterian Hospital** had fewer visits despite having top-performing doctors.

**📌 Recommendation:** Analyze what draws patients to high-traffic hospitals — such as services, location, or reputation — and replicate those success factors in underutilized facilities.

### 🚻 Medical Conditions by Gender
- **Hypertension** and **Diabetes** dominate overall.
- **Females** had more cases of **Hypertension, Diabetes, Cancer, and Obesity** than males.
- Medication usage reflects these gender-specific trends.

**📌 Recommendation:** Launch gender-targeted awareness campaigns to drive early diagnosis and reduce long-term treatment costs.

### 💊 Medication Usage
- **Ibuprofen** and **Lipitor** are widely prescribed across multiple conditions.
- Some commonly used medications aren’t directly linked to the most diagnosed conditions.

**📌 Recommendation:** Review prescribing practices for cost-efficiency and reduce potential overprescription.

### 💵 Billing & Insurance Trends
- **Medicare** accounts for the largest share of total billing.
- A notable spike in billing occurred in the most recent quarter.

**📌 Recommendation:** Investigate the spike — was it due to patient volume, new services, or insurance policy changes? Also, ensure fair pricing practices with dominant insurers.

### 🧾 Billing by Insurance Type
- Most patients are covered by **Medicare** and **United Healthcare**, but billing per patient differs significantly.
- **Out-of-pocket** patients contributed the least to total revenue.

**📌 Recommendation:** Use this insight to negotiate better terms with insurers or develop subsidies for uninsured patients.

### ⏱️ Admission Type
- **Elective admissions** dominate.
- **Emergency** and **Urgent** admissions are relatively low.

**📌 Recommendation:** Boost early consultation programs via community outreach and telehealth services to reduce emergency overuse.

### 👶 Age Distribution
- Most patients are between **41–60** and **61–80** years old.
- Very few patients are under 20.

**📌 Recommendation:** There may be service gaps in pediatric and geriatric care. Consider expanding offerings to serve these demographics.

## 🔚 Executive Summary for Stakeholders

| **Category**           | **Insight**                                                                  |
|------------------------|-------------------------------------------------------------------------------|
| **Doctor Efficiency**  | Uneven patient distribution among doctors                                     |
| **Hospital Load**      | High-traffic hospitals outperform others — opportunity for best practice sharing |
| **Gender Differences** | Conditions and medications show gender-specific trends                        |
| **Insurance Patterns** | A few insurers dominate billing — monitor for overreliance                    |
| **Emergency Overuse**  | Low early care uptake — preventive care is lacking                            |
| **Billing Trends**     | Recent billing spike needs deeper investigation                               |
| **Demographic Gaps**   | Elderly and pediatric patients are underrepresented                           |

---

---

**Author**: Favour J. | [LinkedIn](https://www.linkedin.com/in/Favour-Jokparose) | [GitHub](https://github.com/Favour-j)

*Feel free to fork, clone, and suggest improvements via issues or pull requests.*



