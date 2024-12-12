create database world;
use world;
-- Create Country table
create table Country (
    Id int auto_increment primary key,
    Country_name varchar(50) not null,
    Population bigint,
    Area float
);

-- Create Persons table
create table Persons (
    Id int auto_increment primary key,
    Fname varchar(50),
    Lname varchar(50),
    Population bigint,
    Rating float,
    Country_Id int,
    Country_name varchar(50),
    foreign key (Country_Id) references Country(Id)
);
desc Country;
desc Persons;
-- Insert data into Country table
insert into Country (Id, Country_name, Population, Area) values
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
insert into Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) values
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
select distinct Country_name from Persons;
select Fname as First_Name, Lname as Last_Name from Persons;
select * from Persons where Rating > 4.0;
select * from Country where Population > 100000;
select * from Persons where Country_name = 'USA' or Rating > 4.5;
select * from Persons where Country_name is null;
select * from Persons where Country_name in ('USA', 'Canada', 'UK');
select * from Persons where Country_name not in ('India', 'Australia');
select * from Country where Population between 500000 and 2000000;
select * from Country where Country_name not like 'C%';






