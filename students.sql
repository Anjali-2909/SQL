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
('Amit Sharma', 20, 'B.Tech', 85),
('Priya Verma', 21, 'BCA', 90),
('Rohit Singh', 22, 'B.Sc', 78),
('Neha Gupta', 20, 'B.Com', 88);

-- Select Queries
SELECT * FROM Students;
SELECT * FROM Students WHERE Course = 'BCA';
SELECT Name, Marks FROM Students WHERE Marks > 80;

-- Update Data
UPDATE Students SET Marks = 95 WHERE Name = 'Priya Verma';

-- Delete Data
DELETE FROM Students WHERE StudentID = 3;

-- Advanced Queries
SELECT Name, Marks FROM Students ORDER BY Marks DESC LIMIT 1;
SELECT Course, AVG(Marks) AS AverageMarks FROM Students GROUP BY Course;
