-- Week 1 MySQL Database Assignment
-- Name: Margaret Akuch Deng
-- Project: Hospital Management System
-- Database: hospital_management

-- Create the database only if it does not already exist so this script can be rerun safely.
CREATE DATABASE IF NOT EXISTS hospital_management;

-- Display the databases available on the MySQL server.
SHOW DATABASES;

-- Select the database where the tables will be created.
USE hospital_management;

-- Create a table for patient details. The auto-incrementing primary key uniquely identifies each patient.
CREATE TABLE IF NOT EXISTS Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(20),
    address VARCHAR(100)
);

-- Create a table for doctor details. The auto-incrementing primary key uniquely identifies each doctor.
CREATE TABLE IF NOT EXISTS Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20)
);

-- Create a table for appointments. Foreign keys link each appointment to an existing patient and doctor.
CREATE TABLE IF NOT EXISTS Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    reason VARCHAR(200),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Display the tables created in the selected database.
SHOW TABLES;

-- Display each table's columns, data types, and key information.
DESCRIBE Patients;
DESCRIBE Doctors;
DESCRIBE Appointments;
