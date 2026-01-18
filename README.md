# 🏥 Hospital Data Analysis using SQL

## 📌 Project Overview
This project focuses on analyzing hospital data using **SQL** to extract meaningful insights related to **patients, doctors, departments, medical expenses, and hospital stay duration**.

The analysis is performed using PostgreSQL and demonstrates practical use of SQL aggregation, grouping, and date calculations to solve real-world healthcare-related business questions.

---

## 🗂️ Dataset Description
The project uses a single table:

### **hospital_records**
| Column Name | Description |
|------------|------------|
| hospital_name | Name of the hospital |
| location | City/location of the hospital |
| department | Medical department |
| doctors_count | Number of doctors |
| patients_count | Number of patients |
| admission_date | Patient admission date |
| discharge_date | Patient discharge date |
| medical_expenses | Medical expenses incurred |

---

## 🏗️ Database Schema
```sql
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

📊 SQL Analysis Performed

The following business questions were solved using SQL:
1.Total number of patients across all hospitals
2.Average number of doctors per hospital
3.Top 3 departments with the highest number of patients
4.Hospital with the maximum medical expenses
5.Daily average medical expenses per hospital
6.Longest hospital stay based on admission and discharge dates
7.Total patients treated per city
8.Average length of stay per department
9.Department with the lowest number of patients
10.Monthly medical expenses report

📂 Project Structure
hospital-data-analysis-sql/
│
├── README.md
├── sql/
│   └── hospital_analysis.sql

👤 Author

Pranjal Tiwari
