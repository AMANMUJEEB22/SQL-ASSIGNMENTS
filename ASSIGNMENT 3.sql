CREATE DATABASE Company;
USE Company;
CREATE TABLE Managers (
    Manager_Id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    DOB DATE,
    Age INT CHECK (Age >= 18 AND Age <= 70),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender VARCHAR(10),
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);
DESC Managers;

INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary)
VALUES 
(1, 'John', 'Doe', '1985-04-12', 39, 'Male', 'IT', 45000),
(2, 'Aaliya', 'Khan', '1990-06-15', 34, 'Female', 'Finance', 40000),
(3, 'Mike', 'Smith', '1980-11-20', 43, 'Male', 'IT', 48000),
(4, 'Emma', 'Jones', '1995-01-18', 29, 'Female', 'HR', 30000),
(5, 'Raj', 'Patel', '1988-09-05', 36, 'Male', 'IT', 27000),
(6, 'Sara', 'Williams', '1992-07-09', 32, 'Female', 'Sales', 35000),
(7, 'David', 'Brown', '1984-03-01', 40, 'Male', 'Marketing', 36000),
(8, 'Priya', 'Sharma', '1991-12-10', 32, 'Female', 'IT', 32000),
(9, 'Chris', 'Taylor', '1993-05-25', 31, 'Male', 'Operations', 29000),
(10, 'Nina', 'Wilson', '1987-11-02', 37, 'Female', 'Finance', 37000);

SELECT * FROM Managers;

SELECT First_name, Last_name, DOB
FROM Managers
WHERE Manager_Id = 1;

SELECT First_name, Last_name, Salary * 12 AS Annual_Income
FROM Managers;

SELECT * FROM Managers
WHERE First_name != 'Aaliya';

SELECT * FROM Managers
WHERE Department='IT' AND Salary > 25000;

SELECT * FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;






