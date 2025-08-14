-- Create Database
CREATE DATABASE StudentDB;
USE StudentDB;

-- Create Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Course VARCHAR(50),
    Marks INT
);

-- Insert Data
INSERT INTO Students (Name, Age, Course, Marks) VALUES
('Anjali Kunjwal', 21, 'B.Tech', 85),
('Lakshay Sharma', 21, 'BCA', 88),
('Gunjan Thakur', 22, 'B.Sc', 78),
('Naman Gupta', 20, 'B.Com', 88);

-- Select Queries
SELECT * FROM Students;
SELECT * FROM Students WHERE Course = 'BCA';
SELECT Name, Marks FROM Students WHERE Marks > 80;

-- Update Data
UPDATE Students SET Marks = 95 WHERE Name = 'Anjali Kunjwal';

-- Delete Data
DELETE FROM Students WHERE StudentID = 3;

-- Advanced Queries
SELECT Name, Marks FROM Students ORDER BY Marks DESC LIMIT 1;
SELECT Course, AVG(Marks) AS AverageMarks FROM Students GROUP BY Course;
