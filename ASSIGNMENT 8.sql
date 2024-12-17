CREATE DATABASE SUBANDVIEWS;
USE SUBANDVIEWS;
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
SELECT c.Country_name, COUNT(p.Id) AS Number_of_Persons
FROM Country c
LEFT JOIN Persons p ON c.Id = p.Country_Id
GROUP BY c.Country_name;
SELECT c.Country_name, COUNT(p.Id) AS Number_of_Persons
FROM Country c
LEFT JOIN Persons p ON c.Id = p.Country_Id
GROUP BY c.Country_name
ORDER BY Number_of_Persons DESC;
SELECT c.Country_name, AVG(p.Rating) AS Average_Rating
FROM Country c
JOIN Persons p ON c.Id = p.Country_Id
GROUP BY c.Country_name
HAVING AVG(p.Rating) > 3.0;
SELECT Country_name
FROM Country
WHERE Id IN (
    SELECT Country_Id 
    FROM Persons
    WHERE Rating = (
        SELECT Rating 
        FROM Persons 
        WHERE Country_Id = (SELECT Id FROM Country WHERE Country_name = 'USA')
    )
);
SELECT Country_name, Population
FROM Country
WHERE Population > (SELECT AVG(Population) FROM Country);

CREATE DATABASE Product;
USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone_no VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country VARCHAR(50)
);
CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email
FROM Customer;

SELECT * FROM customer_info;
CREATE VIEW US_Customers AS
SELECT * 
FROM Customer
WHERE Country = 'US';

SELECT * FROM US_Customers;
CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email, Phone_no, State
FROM Customer;

SELECT * FROM Customer_details;UPDATE Customer
SET Phone_no = '1234567890' -- Example phone number
WHERE State = 'California';

-- Verify the update:
SELECT * FROM Customer_details WHERE State = 'California';
SELECT State, COUNT(Customer_Id) AS Number_of_Customers
FROM Customer
GROUP BY State
HAVING COUNT(Customer_Id) > 5;
SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer_details
GROUP BY State;
SELECT *
FROM Customer_details
ORDER BY State ASC;

