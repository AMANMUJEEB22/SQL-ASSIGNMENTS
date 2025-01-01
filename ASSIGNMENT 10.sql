CREATE DATABASE TRIGGERS;
USE TRIGGERS;
-- Step 1: Create the teachers table
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(100),
    experience INT,
    salary DECIMAL(10, 2)
);
DESC teachers;
-- Insert 8 rows into the teachers table
INSERT INTO teachers (id, name, subject, experience, salary) VALUES
(1, 'Alice', 'Math', 5, 50000),
(2, 'Bob', 'Physics', 8, 60000),
(3, 'Charlie', 'Chemistry', 12, 70000),
(4, 'Diana', 'Biology', 3, 40000),
(5, 'Eve', 'Math', 9, 55000),
(6, 'Frank', 'History', 15, 75000),
(7, 'Grace', 'Physics', 7, 62000),
(8, 'Hank', 'Computer Science', 2, 45000);
SELECT * FROM teachers;
-- Step 2: Create a before insert trigger to check for negative salary
DELIMITER //
CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //
DELIMITER ;

-- Step 3: Create the teacher_log table
CREATE TABLE teacher_log (
    teacher_id INT,
    action VARCHAR(50),
    timestamp DATETIME
);
SELECT * FROM teacher_log;
-- Create an after insert trigger to log insert actions
DELIMITER //
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END //
DELIMITER ;

-- Step 4: Create a before delete trigger to restrict deletion of experienced teachers
DELIMITER //
CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete teacher with experience greater than 10 years';
    END IF;
END //
DELIMITER ;

-- Step 5: Create an after delete trigger to log delete actions
DELIMITER //
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', NOW());
END //
DELIMITER ;
