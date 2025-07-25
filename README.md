# 🩺 Healthcare Appointment No-Show Analysis (BI Portfolio Project)

A complete Business Intelligence project analyzing why patients miss their appointments. This end-to-end project includes **SQL data modeling**, **data cleaning in Python**, and **interactive dashboards in Tableau** to uncover patterns in patient behavior.

---

## 📦 Project Structure

```
Healthcare-No-Show-BI/
│
├── 📁 sql/
│   ├── schema.sql
│   └── healthcare_bi_queries.sql
│
├── 📁 python_etl/
│   └── healthcare-no-show-bi-project.ipynb
│
├── 📁 data/
│   ├── dim_patient.csv
│   ├── dim_location.csv
│   └── fact_appointment.csv
│
├── 📁 tableau/
│   ├── Dashboard_1.png
│   └── Dashboardd_2.png
│   └── Tableau Public.txt
│
└── README.md
```

---

## 📊 Tableau Dashboards

**1️⃣ Dashboard – Appointment Insights**
- ✅ No-Show Rate
- ✅ SMS Reminder Effect
- ✅ No-Show by Patient Conditions
- ✅ Age Group-wise No-Show
- ✅ Wait Time vs No-Show

**2️⃣ Dashboard – Patient Demographics & Repeat Patterns**
- ✅ Patient-wise Repeat No-Shows
- ✅ Neighborhood-wise Heatmap
- ✅ No-Shows by Gender
- ✅ Monthly No-Show Trends

🔗 **[View Dashboard on Tableau Public](#)** (https://public.tableau.com/views/HealthcareAppointmentNo-ShowAnalysis/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## 📁 Components Description

### 🗃️ `sql_scripts/`
- `schema.sql`: Creates star schema with `dim_patient`, `dim_location`, and `fact_appointment`
- `healthcare_bi_queries.sql`: Analytical SQL queries using **CTEs** and **window functions**

### 🐍 `python_etl/`
- Jupyter Notebook (`.ipynb`) for:
  - Cleaning original Kaggle dataset
  - Converting raw columns (e.g. yes/no, datetime)
  - Creating CSVs for Tableau

### 🧼 `cleaned_data/`
- Final output of cleaned, transformed tables ready for analysis

### 📊 `tableau_dashboards/`
- Tableau Workbook files (`.twb`) for interactive visualization

---

## 📌 Dataset Source

> [Kaggle: Medical Appointment No Shows](https://www.kaggle.com/datasets/joniarroba/noshowappointments)

---

## 📈 Key Findings

- Patients **without SMS reminders** had a **higher no-show rate**
- Long wait times (more days between scheduling and appointment) increased the no-show likelihood
- Patients with **chronic conditions** like **diabetes** and **hypertension** showed slightly higher no-show behavior
- Some patients missed appointments **repeatedly**, highlighting the need for intervention

---

## 🛠 Tech Stack

| Tool      | Usage                       |
|-----------|-----------------------------|
| **SQL**   | Schema design, BI queries   |
| **Python**| Data cleaning using Pandas  |
| **Tableau**| Dashboard visualizations   |

---

## 👩‍💻 Author

**[Bhoomika Harkhanee]**  
Aspiring BI Analyst | SQL + Tableau + Python | Data Storytelling  
🔗 [LinkedIn](www.linkedin.com/in/bhoomika-harkhanee-055223127)

---

⭐️ If you liked this project, feel free to **star this repo** or **connect with me on LinkedIn**!
