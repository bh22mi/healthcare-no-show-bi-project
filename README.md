🩺 Healthcare Appointment No-Show Analysis (BI Project)
This project analyzes the factors affecting patient appointment no-shows using real-world healthcare data. The goal is to draw insights using SQL, Python, and Tableau for data-driven decision-making in the healthcare industry.

📦 Project Components
🗃 SQL Scripts

schema.sql – Table creation scripts (dim_patient, dim_location, fact_appointment)

healthcare_bi_queries.sql – All analytical SQL queries with CTEs and window functions

🐍 Python Notebook

healthcare-no-show-bi-project.ipynb – Full ETL pipeline: loading, cleaning, and exporting datasets using Pandas

📊 Tableau Dashboards

Two interactive dashboards built using Tableau Public
🔗 Tableau Link (Insert your live link)

📊 Dashboard Breakdown
Dashboard 1 – Appointment Insights

No-Show Rate

Effect of SMS Reminders

No-Show by Patient Conditions

Age Group-wise No-Show

Wait Time vs No-Show Trend

Dashboard 2 – Demographics & Repeat Behavior

Patient-wise Repeat No-Shows

Neighborhood-wise No-Show Heatmap

Gender-wise No-Shows

Monthly No-Show Trends

🧠 Key Insights
Patients who received SMS reminders had a lower no-show rate

Certain conditions (e.g., diabetes, hypertension) slightly correlate with no-show behavior

Longer wait times increase the likelihood of no-shows

Some patients repeatedly miss appointments, indicating a need for personalized interventions

🛠 Tech Stack
SQL: Schema design, joins, CTEs, window functions

Python (Pandas): Data cleaning, preprocessing, exporting to CSV

Tableau: Visualization and dashboard design

📁 Folder Structure
pgsql
Copy
Edit
📦 Healthcare-No-Show-BI
├── 📄 schema.sql
├── 📄 healthcare_bi_queries.sql
├── 📓 healthcare-no-show-bi-project.ipynb
├── 📁 cleaned_data/ 
│   ├── dim_patient.csv
│   ├── dim_location.csv
│   └── fact_appointment.csv
└── 📁 tableau_dashboards/
    ├── Dashboard_1.twb
    └── Dashboard_2.twb
📌 Dataset Source
Kaggle – Medical Appointment No Shows

👩‍💻 Author
[Your Name] – Aspiring BI Analyst | Data Storyteller | SQL + Tableau Enthusiast
🔗 LinkedIn • 🔗 Portfolio

