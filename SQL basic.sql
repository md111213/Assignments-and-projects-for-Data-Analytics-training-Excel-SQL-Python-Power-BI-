/*
                                       SQL Basics
Q1. Create a New Database and Table for Employees
Task: Create a new database named company_db and Create a table named employees with the following columns:
Column Name                Data Type       Constraint
employee_id                 INT             PRIMARY KEY
first_name                VARCHAR(50)              
last_name                 VARCHAR(50)
department                VARCHAR(50)
salary                     INT
hire_date                  DATE
*/
create database company_db;
use  company_db;
create table employees(
employee_id int primary key,
first_name varchar(50),
last_name  varchar(50),
department varchar(50),
salary   int,
hire_date date );


/* Q2. Insert Data into Employees Table
Task: Insert the following sample records into the employees table.
*/
 INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date)
VALUES 
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

/*Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)
Hint: Use the ORDER BY clause on the salary column.*/

SELECT * 
FROM Employees 
ORDER BY Salary ASC;

-- Q4. Show Employees Sorted by Department (A-Z) and Salary (High → Low)

select *
from Employees
order by Department asc, salary desc;

-- Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
select *
from employees where
department = "IT" order by hire_date desc;

/*
Q6. Create and Populate a Sales Table
Task: Create a table sales to track sales data:
*/
create table sales(
sales_id int,
customer_name varchar(50),
amount int,
sales_date date);


select * from sales;
insert into sales(sales_id,customer_name,amount, sales_date)
values 
(1, 'aditi',1500, '2024-08-01'),
(2,'rohan',2200, '2024-08-03'),
(3,'aditi', 3500, '2024-09-05'),
(4,'meena', 2700, '2024-09-15'),
(5, 'rohan', 4500, '2024-09-25');

ALTER TABLE sales 
MODIFY sales_date DATE;

select * from sales;

/*Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
Hint: Use ORDER BY amount DESC.*/

select * from sales
order by amount desc;

/* Q8. Show All Sales Made by Customer "Aditi"
Hint: Use WHERE customer_name = 'Aditi'.
*/

select * from sales 
where customer_name = 'aditi'; 

/* Q9. What is the Difference Between a Primary Key and a Foreign Key?

Primary key - uniquely identifies each record (row) in a table
key features - must contain uniqiue values (no duplicates)
             - cannot contain NULL values.
             - Each table can have only one primary key 
             
foriegn key - A forigen key is a field (or set of fields) in one table that refers to the primary key in another table
key features- used to create relationship between tables.
              can contain duplicate values.
             - can contain NULL values (depending on constraints).
             - A table can have multiple foreign keys 
  */
  
  /* Q10. What Are Constraints in SQL and Why Are They Used?
      
      Constraint in SQL are rules applied on table columns to control what data can be inserted updated or deleted.
      They are used to maintain datab accuracy, consistency, and integrity in the database.

        Why Constraint are used : 
        - Constraint help to 
        1. Prevent invalid data entry
        2. Maintain uniqueness 
        3. Avoid empty important fields
        4. Build relationships between tables
        5. Improve data reliability
        */
  
  
             
  Q10. What Are Constraints in SQL and Why Are They Used?           

