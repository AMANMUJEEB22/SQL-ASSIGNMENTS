create database house;
use house;
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
select * from Country;
select * from Persons;
SELECT 
    Persons.Id AS Person_Id, 
    Persons.Fname, 
    Persons.Lname, 
    Country.Country_name AS Country_Name, 
    Country.Population AS Country_Population
FROM Persons
INNER JOIN Country
ON Persons.Country_Id = Country.Id;
SELECT 
    Persons.Id AS Person_Id, 
    Persons.Fname, 
    Persons.Lname, 
    Country.Country_name AS Country_Name, 
    Country.Population AS Country_Population
FROM Persons
LEFT JOIN Country
ON Persons.Country_Id = Country.Id;
SELECT 
    Country.Id AS Country_Id, 
    Country.Country_name AS Country_Name, 
    Country.Population AS Country_Population, 
    Persons.Fname AS Person_Fname, 
    Persons.Lname AS Person_Lname
FROM Country
RIGHT JOIN Persons
ON Country.Id = Persons.Country_Id;
SELECT DISTINCT Country_name 
FROM (
    SELECT Country_name FROM Country
    UNION
    SELECT Country_name FROM Persons
) AS DistinctCountryNames;
SELECT Country_name 
FROM Country
UNION ALL
SELECT Country_name 
FROM Persons;
SELECT Id, Fname, Lname, ROUND(Rating) AS RoundedRating, Country_name
FROM Persons;
