CREATE  DATABASE org123;
USE org123;
CREATE TABLE  department(dept_no INT PRIMARY KEY,dep_name VARCHAR(50), location VARCHAR(50));
CREATE TABLE employee(emp_no INT PRIMARY KEY,emp_name VARCHAR(50) NOT NULL,dob DATE, address VARCHAR(50), doj DATE, mobile_no INT, dept_no INT, FOREIGN KEY (dept_no) REFERENCES department(dept_no), salary BIGINT NOT NULL);
SELECT*FROM department;
SELECT*FROM employee;
ALTER TABLE employee ADD designation VARCHAR(50); 
ALTER TABLE department DROP location;
DROP TABLE employee;
DROP TABLE department;
DROP DATABASE org123;
SHOW TABLES;

