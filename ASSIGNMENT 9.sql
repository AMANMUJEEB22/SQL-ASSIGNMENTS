CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;
CREATE TABLE Worker (
    Worker_Id INT PRIMARY KEY,
    FirstName CHAR(25),
    LastName CHAR(25),
    Salary INT,
    JoiningDate DATETIME,
    Department CHAR(25)
);
DESC Worker;
DELIMITER //

CREATE PROCEDURE AddWorker(
    IN p_Worker_Id INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_Worker_Id, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END //

DELIMITER ;
SELECT * FROM Worker;
CALL AddWorker(1, 'John', 'Doe', 50000, '2024-12-01', 'HR');

DELIMITER //

CREATE PROCEDURE GetWorkerSalary(
    IN p_Worker_Id INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary FROM Worker WHERE Worker_Id = p_Worker_Id;
END //

DELIMITER ;
CALL GetWorkerSalary(1, @p_Salary);
SELECT @p_Salary AS Salary;
DELIMITER //

CREATE PROCEDURE UpdateWorkerDepartment(
    IN p_Worker_Id INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_Worker_Id;
END //

DELIMITER ;

CALL UpdateWorkerDepartment(1, 'Finance');
DELIMITER //

CREATE PROCEDURE GetWorkerCountByDepartment(
    IN p_Department CHAR(25),
    OUT p_WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_WorkerCount FROM Worker WHERE Department = p_Department;
END //

DELIMITER ;
CALL GetWorkerCountByDepartment('Finance', @p_WorkerCount);
SELECT @p_WorkerCount AS WorkerCount;
DELIMITER //

CREATE PROCEDURE GetAverageSalaryByDepartment(
    IN p_Department CHAR(25),
    OUT p_avgSalary DECIMAL(10,2)
)
BEGIN
    SELECT AVG(Salary) INTO p_avgSalary FROM Worker WHERE Department = p_Department;
END //

DELIMITER ;
CALL GetAverageSalaryByDepartment('Finance', @p_avgSalary);
SELECT @p_avgSalary AS AverageSalary;
