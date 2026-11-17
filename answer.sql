
-- Week 1 Database Assignment
-- Name: Margaret Akuch Deng
-- Database: Hospital Management System

-- 1. Create a database
CREATE DATABASE hospital_management;

-- 2. Display all databases
SHOW DATABASES;

-- 3. Select the database
USE hospital_management;

-- 4. Create Patients table
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(20),
    address VARCHAR(100)
);

-- 5. Create Doctors table
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20)
);

-- 6. Create Appointments table
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    reason VARCHAR(200),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- 7. Display all tables
SHOW TABLES;

-- 8. Describe table structures
DESCRIBE Patients;
DESCRIBE Doctors;
DESCRIBE Appointments;
