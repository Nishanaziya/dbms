CREATE  DATABASE org13;
USE org13;
CREATE TABLE  department(dept_no INT PRIMARY KEY,dep_name VARCHAR(50), location VARCHAR(50));
INSERT INTO department VALUES(1,"MCA","Kollam"),(2,"Chemistry","Malappuram"),(3,"Maths","Trivandrum"),(4,"English","Kottayam"),(5,"EEE","Thrissur");
CREATE TABLE employee(emp_no INT PRIMARY KEY,emp_name VARCHAR(50) NOT NULL,dob DATE, address VARCHAR(50), doj DATE, mobile_no BIGINT, dept_no INT, FOREIGN KEY (dept_no) REFERENCES department(dept_no), salary BIGINT NOT NULL,designation VARCHAR(50));
INSERT INTO employee VALUES(110,"Anjana","2000-10-23","Vyppin island,erankulam","2023-04-06",9747749684,1,2400,"Manager"),(111,"Rasika","2000-04-23","payyannur,kannur","2023-06-04",8606922366,2,7000,"Engineer"),(113,"Shweta","2001-10-23","Irutty,kannnur","2022-4-6",8606922344,3,2500,"Typist"),(114,"Anaswara","2000-10-20","ariyal,pathanamthitta","2023-05-06",9747749694,2,25400,"Staff"),(115,"John","2001-10-23","Vengara,malappuram","2023-05-06",9647749684,3,6000,"Staff");
SELECT*FROM employee;
SELECT*FROM department;
SELECT emp_no,emp_namme,designation,salary FROM employee ORDER BY salary DESC;
SELECT emp_no,emp_name,salary FROM employee WHERE salary BETWEEN 2000 AND 5000;
SELECT DISTINCT designation FROM employee;
SELECT dep_no, SUM(salary) FROM employee GROUP BY dep_no;
UPDATE employee SET salary = 25000 WHERE designation ='Typist';
UPDATE employee SET mobile_no = 9734456567 WHERE emp_name ='John';
DELETE FROM employee WHERE salary=7000;
SELECT dep_no,SUM(salary) FROM employee GROUP BY dep_no HAVING SUM (salary)>25000; 




