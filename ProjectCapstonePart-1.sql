SELECT * FROM Employees;
SELECT * FROM Employees WHERE Department = 'IT';
SELECT * FROM Employees WHERE Salary > 50000;
SELECT * FROM Employees ORDER BY Salary;
SELECT * FROM Employees ORDER BY Salary DESC;
SELECT AVG(Salary) FROM Employees;
SELECT COUNT(*) FROM Employees GROUP BY Department;