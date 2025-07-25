USE healthcare_data;

/* 1. How Many Appointments Resulted in No-Shows? */
SELECT COUNT(*) as  total_no_shows
FROM fact_appointment
WHERE no_show = 1;

/* What Percentage of Appointments were Missed? */
SELECT ROUND((SELECT SUM(no_show) * 100)/COUNT(*),2 ) as missed_appointments
FROM fact_appointment;

/* 3. Which Patients Missed Appointments Multiple Times? */
SELECT patient_id, COUNT(*) as total_appointments, SUM(no_show) as total_no_show
FROM fact_appointment
GROUP BY 1
HAVING SUM(no_show) > 1
ORDER BY 3 DESC;

/*4. Breakdown of Patients by Their No-Show Frequency */
SELECT no_show_freq, COUNT(patient_id)
FROM (SELECT
      patient_id,
      SUM(no_show) as no_show_freq
      FROM fact_appointment
      GROUP BY 1
      ) t
GROUP BY 1
ORDER BY 1;      

/*5. What Are the Average No-Show Rates by Gender? */
SELECT gender, ROUND(SUM(no_show) * 100 / COUNT(*), 2) as no_show_rate
FROM fact_appointment fa
JOIN dim_patient dp USING (patient_id)
GROUP BY 1;

/*6. Which Age Groups Have the Highest No-Show Rates? */
SELECT
CASE WHEN age BETWEEN 0 AND 18 THEN '0-18'
 WHEN age BETWEEN 19 AND 35 THEN '19-35'
 WHEN age BETWEEN 36 AND 50 THEN '36-50'
 WHEN age BETWEEN 51 AND 65 THEN '51-65'
 ELSE '66+'
 END as age_group, ROUND(SUM(no_show) * 100 / COUNT(*),2) as no_show_rate
 FROM fact_appointment
 JOIN dim_patient USING (patient_id)
 GROUP BY 1
 ORDER BY 2 DESC;
 
 /*7. Which Neighborhoods Have Higher Missed Appointment Rates? */
 SELECT neighbourhood, ROUND(SUM(no_show) * 100 / COUNT(*)) as no_show_rate
 FROM fact_appointment
 JOIN dim_location USING(location_id)
 GROUP BY 1,2
 ORDER BY 3 DESC;
 
 
 
 
 
 
 
