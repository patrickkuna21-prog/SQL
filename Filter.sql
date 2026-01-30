CREATE TABLE IF NOT EXISTS Department (
        Employee_id TEXT,
        Name TEXT,
        Department_id TEXT,
        Manager_id TEXT,
        Salary REAL
        );
INSERT INTO Department (Employee_id, Name, Department_id, Manager_id, Salary) VALUES
('100', 'Alice', '90', '100', 24000),
('101', 'Bob', '89', '101', 19000),
('102', 'Charlie', '90', '102', 22000),
('103', 'David', '88', '103', 27000),
('104', 'Eve', '91', '104', 30000),
('105', 'Frank', '92', '105', 28000),
('106', 'Grace', '90', '106', 26000);

SELECT Department_id AS Department_id, COUNT(*) AS Employee_Count FROM Department Group BY Department_id;

SELECT Department_id , SUM(Salary) FROM Department GROUP BY Department_id;

SELECT Department_id AS Department_CODE , COUNT(*) AS Employee_COUNT , SUM(Salary) AS TOTAL_SALARY FROM Department GROUP BY Department_id;

SELECT Department_id AS Department_id , SUM(Salary) AS TOTAL_SALARY FROM Department WHERE Manager_id = '103' GROUP BY Department_id;

SELECT Department_id , COUNT(*) AS Employee_COUNT FROM Department GROUP BY Department_id HAVING COUNT(*) > 2;