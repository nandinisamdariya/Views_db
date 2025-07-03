-- Task 7: Creating Views
-- Author: Nandini Samdariya
-- Description: Creating and using SQL Views to simplify complex queries and improve data security

-- Select the database/schema to use
USE task7_creating_views;

-- Create Departments Table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- Create Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Salary INT,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Step 4: Insert Departments
INSERT INTO Departments VALUES 
(1, 'IT'), 
(2, 'HR'), 
(3, 'Sales');

-- Step 5: Insert Employees
INSERT INTO Employees VALUES 
(101, 'Amit', 75000, 1),
(102, 'Riya', 98000, 2),
(103, 'Megha', 72000, 3),
(104, 'Nayana', 90000, 2),
(105, 'Aniket', 80000, 1);

-- Create a view combining employee and department information
-- This view helps to avoid repeating complex JOIN queries
CREATE VIEW EmpDeptView AS
SELECT E.EmpName, E.Salary, D.DeptName
FROM Employees E
JOIN Departments D ON E.DeptID = D.DeptID;

-- Display all data from the created view
SELECT * FROM EmpDeptView;

-- Query the view to find employees earning more than 70,000
SELECT * FROM EmpDeptView
WHERE Salary > 70000;

-- Create a second view that exposes only public (non-sensitive) employee data
-- This helps maintain security and privacy
CREATE VIEW EmpPublicView AS
SELECT EmpName, DeptID FROM Employees;

-- Drop the EmpDeptView if it exists
-- Useful for cleanup or recreating the view
DROP VIEW IF EXISTS EmpDeptView;

-- Step 11: Use the second view to check public data access
SELECT * FROM EmpPublicView;
