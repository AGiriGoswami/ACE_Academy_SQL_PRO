# Create the database
CREATE DATABASE company_db;
-- Ye command ek naya database banati hai jiska naam company_db hai

USE company_db;

-- Ab hum is database ko use karenge taaki tables aur data isi me store ho


-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    -- emp_id har employee ka unique ID hai
    -- PRIMARY KEY ka matlab duplicate nahi ho sakta
    -- AUTO_INCREMENT ka matlab ID automatically increase hogi

    first_name VARCHAR(50),
    -- Employee ka first name store karega (maximum 50 characters)

    last_name VARCHAR(50),
    -- Employee ka last name store karega

    department VARCHAR(50),
    -- Employee kis department me kaam karta hai (Engineering, HR etc.)

    job_title VARCHAR(50),
    -- Employee ka job role (Developer, Manager etc.)

    salary DECIMAL(10,2),
    -- Employee ki salary store karega
    -- 10 total digits aur 2 digits decimal ke liye

    hire_date DATE,
    -- Employee ko company ne kab hire kiya (date format)

    city VARCHAR(50),
    -- Employee kis city me kaam karta hai

    is_active BOOLEAN DEFAULT TRUE
    -- Employee active hai ya nahi
    -- default value TRUE hogi
);


-- Insert sample data
INSERT INTO employees (first_name, last_name, department, job_title, salary, hire_date, city, is_active) VALUES
('Alice','Sharma','Engineering','Senior Developer',95000,'2019-03-15','Mumbai',TRUE),
('Bob','Mehta','Marketing','Marketing Manager',72000,'2020-07-01','Delhi',TRUE),
('Carol','Singh','Engineering','Junior Developer',55000,'2022-01-10','Bangalore',TRUE),
('David','Patel','HR','HR Manager',68000,'2018-11-20','Mumbai',TRUE),
('Eva','Nair','Engineering','Senior Developer',95000,'2020-05-05','Chennai',TRUE),
('Frank','Gupta','Marketing','Marketing Analyst',48000,'2023-03-22','Delhi',FALSE),
('Grace','Verma','Finance','Accountant',62000,'2021-08-14','Pune',TRUE),
('Henry','Joshi','Finance','Finance Manager',85000,'2017-06-30','Mumbai',TRUE),
('Isla','Rao','HR','HR Executive',45000,'2023-01-15','Bangalore',TRUE),
('Jack','Kumar','Engineering','Tech Lead',110000,'2016-09-10','Hyderabad',TRUE),
('Karen','Das','Marketing','Marketing Manager',72000,'2019-12-01','Chennai',FALSE),
('Leo','Bose','Engineering','Junior Developer',55000,'2022-07-18','Pune',TRUE),
('Mia','Pillai','Finance','Accountant',62000,'2020-04-25','Delhi',TRUE),
('Nathan','Iyer','Engineering','Senior Developer',92000,'2018-02-28','Mumbai',TRUE),
('Olivia','Reddy','HR','HR Manager',68000,'2021-10-05','Hyderabad',TRUE);

-- Ye command employees table me multiple records insert karti hai


# LIKE Operator (Pattern Matching)
-- LIKE operator ka use pattern match karne ke liye hota hai

# employee names whose names starts with A
SELECT *
FROM employees
WHERE first_name LIKE 'A%';

-- 'A%' ka matlab: jo bhi naam A se start hota hai
-- % ka matlab: baaki koi bhi characters ho sakte hain


# employee name ends with a
SELECT last_name
FROM employees
WHERE last_name LIKE '%a';

-- '%a' ka matlab: last_name ka last character 'a' hona chahiye


# fetch the managers from the database
SELECT *
FROM employees
WHERE job_title LIKE '%manager%';

-- '%manager%' ka matlab job_title me kahin bhi "manager" word ho


# IS NULL / NULL Handling
# fetch the employees where city is not null

SELECT *
FROM employees
WHERE city IS NOT NULL;

-- Ye query un employees ko return karegi jinke city column me value hai


# UNIQUE / DISTINCT
-- DISTINCT ka use duplicate values remove karne ke liye hota hai

SELECT DISTINCT department
FROM employees;

-- Ye sabhi unique departments show karega


# Unique city
SELECT DISTINCT city
FROM employees;

-- Sabhi unique cities show karega


# Unique job title
SELECT DISTINCT job_title
FROM employees;

-- Sabhi unique job titles show karega


# Fetch unique department and city combination
SELECT DISTINCT department, city
FROM employees;

-- Har department aur city ka unique combination show karega


# AGGREGATION FUNCTIONS
# count of departments

SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

-- COUNT function records count karta hai
-- DISTINCT ke saath use karne se unique departments count honge


# SORTING DATA

# sorting salary (highest first)

SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

-- DESC ka matlab descending order (highest → lowest)


# ascending order (lowest first)

SELECT first_name, salary
FROM employees
ORDER BY salary ASC;

-- ASC ka matlab ascending order (lowest → highest)


# sort employees by last name alphabetically

SELECT first_name, last_name, department
FROM employees
ORDER BY last_name ASC;

-- Last name A → Z order me sort hoga


# sort by department first, then salary

SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- Pehle department ke basis par sorting
-- Agar department same ho to salary highest se lowest


# sort employees by hire date (oldest first)

SELECT first_name, last_name, hire_date
FROM employees
ORDER BY hire_date ASC;

-- Sabse purane employee sabse pehle aayenge


# LIMIT

SELECT *
FROM employees
LIMIT 5;

-- LIMIT ka use result me sirf specified rows dikhane ke liye hota hai
-- Yaha sirf first 5 records show honge


# top 3 highest paid employees

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Salary highest se sort karke top 3 employees show karega


# most recently hired employee

SELECT first_name, hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 1;

-- Sabse latest hire hua employee show karega


# show employees by hire date order

SELECT *
FROM employees
ORDER BY hire_date;

-- Sabhi employees hire_date ke order me show honge


# top 5 lowest paid employees

SELECT first_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 5;

-- Salary lowest se highest sort karke lowest 5 employees show karega


