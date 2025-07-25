USE healthcare_data;

CREATE TABLE dim_patient (
  patient_id BIGINT PRIMARY KEY,
  gender VARCHAR(10),
  age INT,
  scholarship TINYINT,
  hypertension TINYINT,
  diabetes TINYINT,
  alcoholism TINYINT,
  handicap TINYINT
);

CREATE TABLE dim_location (
  location_id INT PRIMARY KEY,
  neighbourhood VARCHAR(50)
);

CREATE TABLE fact_appointment(
   appointment_id INT PRIMARY KEY,
   patient_id BIGINT,
   location_id INT,
   scheduled_day DATETIME,
   appointment_day DATE,
   sms_received INT CHECK (sms_received IN (0,1)),
   no_show INT CHECK (no_show IN (0,1)),
   FOREIGN KEY (patient_id) REFERENCES dim_patient(patient_id),
   FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);

