CREATE TABLE IF NOT EXISTS Employees (
    emp_id INT,
    name VARCHAR(50),
    departement VARCHAR(50),
    salary INT,
    city VARCHAR(50)
    );
INSERT INTO Employees (emp_id, name, departement, salary, city) VALUES
(1, 'John Doe', 'IT', 60000, 'Delhi'),
(2, 'Jane Smith', 'HR', 45000, 'Chicago'),
(3, 'Emily Davis', 'Finanace', 80000, 'San Francisco'),
(4, 'Michael Brown', 'IT', 50000, 'Los Angeles');
SELECT * FROM Employees;

SELECT * FROM Employees WHERE city = 'Delhi';

SELECT * FROM Employees WHERE salary > 50000;