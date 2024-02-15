use firstdb;

SELECT deptId,SUM(empSal) AS 'TOTAL SALARY'
FROM employee
GROUP BY deptId
HAVING deptId=20;

SELECT deptId,SUM(empSal) AS 'TOTAL SALARY'
FROM employee
GROUP BY deptId
HAVING SUM(empSal) BETWEEN 25000 AND 500000;
