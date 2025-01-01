# SQL- ASSIGNMENTS
# 1.DDL COMMANDS
I will create a School database and a STUDENT table with columns Roll_No, Name, Marks, and Grade. Your tasks include adding a Contact column, removing the Grade column, and renaming the table to CLASSTEN. I Will display the data, delete all rows, and finally drop the table from the database. This project demonstrates proficiency in using DDL commands for database management.
CREATE,ALTER,DROP,TRUNCATE,RENAME 

# 2.DDL CONSTRAINTS
I worked on creating and managing a database named Sales with a table called Orders, applying constraints like Primary Key, Unique, and Not Null. I added a new column, renamed the table to sales_orders, and inserted 10 rows of data. After retrieving specific data and updating a product name, I deleted the sales_orders table. This project demonstrated my SQL skills in database creation, manipulation, and management.
Primary Key,Unique,Not Null

# 3.DML COMMANDS
In this task, I will create and manage a database table named Managers using SQL. The table will store information about managers, such as their ID, name, date of birth, age, gender, department, and salary. I will enforce constraints like NOT NULL and CHECK to ensure data validity. Once the table is created, I will insert 10 records into it. After that, I will write SQL queries to retrieve specific information, such as fetching a manager's details based on their ID, calculating their annual income, filtering out specific records, and displaying managers based on salary and department conditions. This exercise will help me to practice essential SQL operations, including table creation, data insertion, and query writing for data retrieval and filtering.

# 4.QUERYING DATA
In This task I work with relational databases to create and manage tables, including Country and Persons. I insert sample data into these tables to simulate real-world scenarios. Using SQL, I perform various queries to analyze and retrieve data, such as listing distinct country names, filtering persons by rating or country, and extracting population details based on conditions. I also practice advanced querying techniques like using aliases, NULL checks, and range conditions. This project helps me  strengthen our database management and SQL querying skills for real-world applications.

# 5.SORTING AND GROUPING DATA
In this project, I focus on sorting and grouping data using SQL. I create two tables, Country and Persons, and populate them with sample data. SQL queries are used to perform various tasks, such as extracting substrings, concatenating fields, counting unique values, and calculating maximum and minimum populations. I also insert rows with NULL values to practice handling missing data and write queries to count and analyze such instances. Additionally, I explore data aggregation, such as grouping by country, calculating total populations, and determining average ratings, along with sorting results to extract meaningful insights. This project helps me to master data manipulation and analysis using SQL.
# 6.JOINS AND UNION
To work with the Country and Persons tables, first set them up with appropriate fields and relationships. The Country table holds information about countries, and the Persons table stores details about individuals, linked to countries via a foreign key. Once the data is added, you can perform tasks like joining the tables (inner join for matching rows, left join to include all from Persons, and right join to include all from Country). You can also fetch distinct country names from both tables using a UNION, or include duplicates with UNION ALL. Finally, you can round the ratings in the Persons table to the nearest integer using the ROUND() function. These queries allow you to efficiently extract and analyze the data.
# 7.FUNCTIONS
In this task, you are performing several SQL operations on the Country and Persons tables. First, you add a new column called DOB (Date of Birth) to the Persons table to store the birthdates of individuals. Next, you create a user-defined function CalculateAge that calculates a person's age based on their DOB by comparing it with the current date. Using this function, you then write a SELECT query to fetch the ages of all persons in the Persons table. Following that, you work with the Country table to perform various string manipulations: finding the length of each country's name, extracting the first three characters of each country name, and converting all country names to both uppercase and lowercase. These tasks demonstrate the use of altering tables, creating functions, and string manipulation in SQL to manage and analyze data efficiently.
# 8.SUBQUERIES AND VIEWS
This project involves working with two datasets, the Country and Persons tables, to perform various SQL operations for data analysis and manipulation. You start by querying the number of persons in each country, sorting the results by count, and calculating the average ratings of persons per country, filtering for averages greater than 3.0. Using subqueries, you identify countries with the same rating as the USA and select countries with populations greater than the global average. Additionally, a new database named Product is created, along with a Customer table to manage customer information. Views are created to simplify data access, including customer_info for full name and email, US_Customers for US-based customers, and Customer_details for detailed customer information. Phone numbers for customers in California are updated, and queries are written to count customers by state and sort customer data by state. This project demonstrates SQL skills in table creation, data manipulation, joins, subqueries, views, and aggregations to analyze and manage structured data efficiently.
# 9.STORED PROCEDURES
This project involves creating stored procedures for managing worker data efficiently. It includes procedures for adding new workers, retrieving salaries, updating departments, counting workers in a department, and calculating average salaries. Each procedure demonstrates parameterized SQL functionality, ensuring robust and dynamic interaction with the database.
# 10.TRIGGERS
This project focuses on managing teacher records using SQL. It involves creating a teachers table with fields such as id, name, subject, experience, and salary, along with inserting sample data. Key triggers ensure data integrity and logging: a BEFORE INSERT trigger prevents negative salaries, and a BEFORE DELETE trigger restricts deletion of highly experienced teachers. Additionally, AFTER INSERT and AFTER DELETE triggers log these actions in a teacher_log table with timestamps. This approach ensures robust data handling, error prevention, and comprehensive auditing of changes in the database.
