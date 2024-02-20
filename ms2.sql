
/*create database joins

use joins

CREATE TABLE employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(20),
emp_sal INT,
emp_deptid VARCHAR(5))


CREATE TABLE department(
dept_id INT NOT NULL,
dept_name VARCHAR(20),
dept_location VARCHAR(20)
)

INSERT INTO employee VALUES
(1111,'STEVE',35000,'D1'),
(1112,'ADAM',28000,'D2'),
(1113,'JOHN',50000,'D3'),
(1114,'MIKE',45000,'D2'),
(1115,'PETER',60000,'D5')

SELECT * FROM employee


ALTER TABLE department ALTER COLUMN dept_id VARCHAR(5)

INSERT INTO department VALUES
('D1','DEVELOPMENT','CALIFORNIA'),
('D2','MARKETING','MUMBAI'),
('D3','ACCOUNTS','NEW YORK'),
('D4','MANAGEMENT','SYDNEY')

SELECT e.emp_id,e.emp_name,e.emp_sal,d.dept_name,d.dept_location
FROM employee AS e
INNER JOIN department AS d
ON e.emp_deptid=d.dept_id;*/


SELECT e.emp_id,e.emp_name,e.emp_sal,d.dept_name,d.dept_location
FROM employee AS e
LEFT OUTER JOIN department AS d
ON e.emp_deptid=d.dept_id;
