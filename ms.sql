use firstdb;

SELECT deptId FROM employee GROUP BY deptId;

SELECT deptId,sum(empSal) AS 'total salary' FROM employee 
GROUP BY deptId;

SELECT deptId,max(empSal) AS 'Max salary' FROM employee 
GROUP BY deptId;

SELECT deptId,min(empSal) AS 'min salary' FROM employee 
GROUP BY deptId;

SELECT deptId,ROUND(AVG(empSal),2) AS 'AVG Salary' FROM employee
GROUP BY deptId;