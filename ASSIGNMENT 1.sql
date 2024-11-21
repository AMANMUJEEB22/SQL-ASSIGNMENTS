-- CREATING A DATABASE
create database School;
use School;
-- create the Student table
create table Student(
ROLL_NO INT AUTO_INCREMENT PRIMARY	KEY,
NAME VARCHAR(40) NOT NULL,
MARK INT,
GRADE CHAR(1) CHECK (GRADE IN ('A','B','C','D','E'))
);

DESC Student;

-- insert data into the Student table
INSERT INTO	Student(ROLL_NO, NAME, MARK, GRADE)
VALUES
(1, 'Aman', 85, 'A'),
(2, 'Badhu', 76, 'B'),
(3, 'Arfan', 65, 'C'),
(4, 'Ashik', 55, 'D'),
(5, 'Anandhu', 44, 'E');

-- Display all rows from the Student table
SELECT * FROM Student;

-- Add a contact column to the Student table
ALTER table Student ADD CONTACT VARCHAR (20);

-- Display all rows from the Student table
SELECT * FROM Student;

-- Drop the Grade column from the STUDENT table
ALTER TABLE STUDENT DROP COLUMN Grade;

-- Display all rows from the Student table
SELECT * FROM Student;

-- Rename the Student table to CLASSTEN
RENAME TABLE Student TO CLASSTEN;

-- Display all rows from the CLASSTEN table
SELECT * FROM CLASSTEN;

-- Delete all rows from the CLASSTEN table
TRUNCATE TABLE CLASSTEN;

SELECT * FROM CLASSTEN;

-- Drop the CLASSTEN table
DROP TABLE CLASSTEN;




