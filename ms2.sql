
use joins
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
ON e.emp_deptid=d.dept_id;


SELECT e.emp_id,e.emp_name,e.emp_sal,d.dept_name,d.dept_location
FROM employee AS e
LEFT OUTER JOIN department AS d
ON e.emp_deptid=d.dept_id;


SELECT e.emp_id,e.emp_name,e.emp_sal,d.dept_name,d.dept_location
FROM employee AS e
RIGHT OUTER JOIN department AS d
ON e.emp_deptid=d.dept_id;

SELECT e.emp_id,e.emp_name,e.emp_sal,d.dept_name,d.dept_location
FROM employee AS e
FULL OUTER JOIN department AS d
ON e.emp_deptid=d.dept_id;


--SUB QUERIES

SELECT emp_name,emp_sal FROM employee 
WHERE emp_sal > (SELECT emp_sal FROM employee WHERE emp_name ='MIKE')

SELECT emp_name,emp_sal FROM employee
WHERE emp_sal>(SELECT emp_sal FROM employee WHERE emp_name='ADAM') 
AND emp_deptid = (SELECT emp_deptId FROM employee WHERE emp_name ='ADAM')


SELECT * FROM employee 
WHERE emp_deptid = (SELECT dept_id FROM department WHERE dept_location='NEW YORK');

DECLARE @name VARCHAR(50),@salary DECIMAL(7,2);
SELECT @name = emp_name,@salary = emp_sal FROM employee;
SELECT @name as 'Name', @salary as 'Salary';
GO

DECLARE @name VARCHAR(50),@salary DECIMAL(7,2);
SELECT @name = emp_name,@salary = emp_sal FROM employee;
SELECT @name as 'Name', @salary as 'Salary';
GO

BEGIN 
	DECLARE @name VARCHAR(50),@salary INTEGER,@deptID VARCHAR(10) = 'D3';
	SELECT @name =emp_name,@salary=emp_sal FROM employee
	WHERE emp_deptid=@deptID;
	SELECT @name 'Name',@salary 'Salary';
	BEGIN
		PRINT 'Department ID: ' + @DeptID;
	END
END


BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary =AVG(emp_sal) FROM employee;
	SELECT @salary AS 'Average Salary';
	IF @salary>50000
		BEGIN 
			PRINT 'Average Salary is greater than 25000';
		 END
	ELSE
		BEGIN
			PRINT 'Average salary is less than 25000';
		END
END
*/

SELECT * FROM employee;

BEGIN 
	WHILE(SELECT MIN(emp_sal) FROM employee)<80000
	BEGIN 
		UPDATE employee SET emp_sal+=10000;
		PRINT 'Salary update';
		SELECT * FROM employee;
		IF(select MIN(emp_sal) FROM employee)>=80000
		PRINT 'minimum salary is greater than 80000'
		BREAK;
	END
END

