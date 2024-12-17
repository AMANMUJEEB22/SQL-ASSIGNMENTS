CREATE DATABASE FUNCTIONS;
USE FUNCTIONS;
-- Create Country table
CREATE TABLE Country (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Country_name VARCHAR(50) NOT NULL,
    Population BIGINT,
    Area FLOAT
);
-- Create Persons table
CREATE TABLE Persons (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(50) NOT NULL UNIQUE,
    Lname VARCHAR(50) NOT NULL,
    Population BIGINT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
DESC Country;
DESC  Persons;
-- Insert data into Country table
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833520),
(2, 'India', 1380004385, 3287263),
(3, 'Canada', 37742154, 9984670),
(4, 'UK', 67886011, 243610),
(5, 'Australia', 25499884, 7692024),
(6, 'China', 1439323776, 9596961),
(7, 'Brazil', 212559417, 8515767),
(8, 'Germany', 83783942, 357022),
(9, 'France', 65273511, 551695),
(10, 'Japan', 126476461, 377975);

-- Insert data into Persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331002651, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 1380004385, 4.7, 2, 'India'),
(3, 'Emily', 'Johnson', 37742154, 4.2, 3, 'Canada'),
(4, 'Michael', 'Brown', 67886011, 3.8, 4, 'UK'),
(5, 'Sarah', 'Davis', 25499884, 4.9, 5, 'Australia'),
(6, 'David', 'Wilson', 1439323776, 4.1, 6, 'China'),
(7, 'Chris', 'Moore', 212559417, 3.6, 7, 'Brazil'),
(8, 'Anna', 'Taylor', 83783942, 4.3, 8, 'Germany'),
(9, 'James', 'Anderson', 65273511, 3.5, 9, 'France'),
(10, 'Patricia', 'Martinez', 126476461, 4.0, 10, 'Japan');
SELECT * FROM Persons;
SELECT * FROM Country;
ALTER TABLE Persons ADD DOB DATE;
DELIMITER //

CREATE FUNCTION CalculateAge(dob DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, dob, CURDATE());
    RETURN age;
END;
//

DELIMITER ;

SELECT Id, Fname, Lname, DOB, CalculateAge(DOB) AS Age
FROM Persons;

SELECT Id, Country_name, CHAR_LENGTH(Country_name) AS Length
FROM Country;

SELECT Id, Country_name, LEFT(Country_name, 3) AS FirstThreeChars
FROM Country;
SELECT Id, 
       Country_name, 
       UPPER(Country_name) AS CountryName_Upper, 
       LOWER(Country_name) AS CountryName_Lower
FROM Country;
