-- Hospital project
CREATE TABLE hospital_records (
    hospital_name VARCHAR(100),
    location VARCHAR(100),
    department VARCHAR(100),
    doctors_count INT,
    patients_count INT,
    admission_date DATE,
    discharge_date DATE,
    medical_expenses DECIMAL(10,2)
);
Select * from hospital_records;

-- 1. Total Number Of Patients
-- Write an SQL query to find the total number of patients across all hospitals.

Select Sum(Patients_count) As Total_Patients from Hospital_records;

-- 2. Average Number of Doctors per Hospital 
-- Retrieve the average count of doctors available in each hospital. 

Select hospital_name,
	   AVG(doctors_count) As Total_Doctos
From hospital_records
Group By hospital_name;

-- 3. Top 3 Departments with the Highest Number of Patients 
--Find the top 3 hospital departments that have the highest number of patients. 

Select department,
	   sum(patients_count) As Highest_number_of_patients
from hospital_records
Group BY department 
Order by Highest_number_of_patients
Desc limit 3;

-- 4. Hospital with the Maximum Medical Expenses 
-- Identify the hospital that recorded the highest medical expenses.

Select hospital_name,
	   MAX(medical_expenses) AS MAX_medical_expenses
From hospital_records
Group by hospital_name
order by Highest_medical_expenses DESC limit 1;

--5. Daily Average Medical Expenses 
-- o Calculate the average medical expenses per day for each hospital.
Select * from Hospital_records
	   
Select hospital_name,admission_date,
	   Avg(medical_expenses) AS avg_daily_expenses
From hospital_records
Group by hospital_name,admission_date
order by admission_date;

--6. Longest Hospital Stay 
-- o Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date.

Select hospital_name,
	   (discharge_date - admission_date) AS stay_days
From hospital_records
Order by stay_days
Desc limit 1;


--7. Total Patients Treated Per City 
-- o Count the total number of patients treated in each city. 

SELECT location,
       SUM(patients_count) AS total_patients
FROM hospital_records
GROUP BY location;

--8. Average Length of Stay Per Department 
-- o Calculate the average number of days patients spend in each department.

SELECT department,
       AVG(discharge_date - admission_date) AS avg_stay_days
FROM hospital_records
GROUP BY department;

--9. Identify the Department with the Lowest Number of Patients 
-- o Find the department with the least number of patients

SELECT department,
       SUM(patients_count) AS total_patients
FROM hospital_records
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;


-- 10. Monthly Medical Expenses Report 
-- • Group the data by month and calculate the total medical expenses for each month. 

Select * from hospital_records

SELECT TO_CHAR(admission_date, 'YYYY-MM') AS month,
       SUM(medical_expenses) AS total_expenses
FROM hospital_records
GROUP BY month
ORDER BY month;






