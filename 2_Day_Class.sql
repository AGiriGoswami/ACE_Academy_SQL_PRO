# -------------------------------------------------
# CREATE DATABASE
# Used to create a new database
# -------------------------------------------------
create database school;

# -------------------------------------------------
# USE DATABASE
# Select the database in which we want to work
# -------------------------------------------------
use school;

# -------------------------------------------------
# CREATE TABLE
# Create a table named "students" to store student details
# -------------------------------------------------
create table students (
    id int,
    # Unique student ID
    name varchar(50),
    # Student name (string up to 50 characters)
    age int,
    # Student age
    city varchar(50),
    # City where the student lives
    marks float # Student marks
);

# -------------------------------------------------
# SELECT ALL DATA
# Display all records from the table
# -------------------------------------------------
select
    *
from
    students;

# -------------------------------------------------
# INSERT DATA
# Insert student records into the students table
# -------------------------------------------------
insert into
    students (name, age, city, marks)
values
    ("Ajay", 21, "Indore", 90),
    ("Priyanshu", 22, "Bihar", 85),
    ("Amit", 23, "Mumbai", 80),
    ("Rahul", 22, "Chemani", 95),
    ("Karan", 21, "Delhi", 72),
    ("Arjun", 23, "Pune", 65),
    ("Sneha", 21, "Delhi", 86),
    ("Anjali", 22, "Bhopal", 75),
    ("Suraj", 23, "Mumbai", 88),
    ("Faizu", 24, "Chemani", 75);

# -------------------------------------------------
# VERIFY DATA
# Check the inserted records in the table
# -------------------------------------------------
select
    *
from
    students;

# -------------------------------------------------
# ALTER TABLE
# Modify the id column to make it AUTO_INCREMENT
# and set it as PRIMARY KEY
# -------------------------------------------------
alter table
    students
modify
    id int auto_increment primary key;

# -------------------------------------------------
# SELECT SPECIFIC COLUMNS
# Display only selected columns from the table
# -------------------------------------------------
select
    name,
    marks
from
    students;

# -------------------------------------------------
# COLUMN ALIAS
# Rename columns temporarily in the output
# -------------------------------------------------
select
    name as Student_name,
    marks as Total_marks
from
    students;

# -------------------------------------------------
# WHERE CLAUSE
# Filter records based on a specific condition
# -------------------------------------------------
select
    *
from
    students
where
    city = "Delhi";

# -------------------------------------------------
# WHERE CONDITION
# Fetch students who scored more than 80 marks
# -------------------------------------------------
select
    *
from
    students
where
    marks > 80;

# -------------------------------------------------
# AND OPERATOR
# Apply multiple conditions (both must be true)
# -------------------------------------------------
select
    *
from
    students
where
    city = "Delhi"
    and age > 20;

# -------------------------------------------------
# OR OPERATOR
# Apply multiple conditions (any one must be true)
# -------------------------------------------------
select
    *
from
    students
where
    city = "Delhi"
    or age > 20;

# -------------------------------------------------
# NOT OPERATOR
# Exclude records where city is Delhi
# -------------------------------------------------
select
    *
from
    students
where
    not city = "Delhi";

# -------------------------------------------------
# BETWEEN OPERATOR
# Select students whose marks are between 60 and 90
# -------------------------------------------------
select
    *
from
    students
where
    marks between 60
    and 90;

# -------------------------------------------------
# IN OPERATOR
# Select students who live in Mumbai or Delhi
# -------------------------------------------------
select
    *
from
    students
where
    city in ("Mumbai", "Delhi");