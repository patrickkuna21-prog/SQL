DROP TABLE IF EXISTS Salesman;
CREATE TABLE IF NOT EXISTS Salesman (
    SNO TEXT PRIMARY KEY, 
    Name TEXT, 
    City TEXT,
    Commision REAL);
INSERT INTO Salesman (SNO, Name, City, Commision) VALUES
('S001', 'John Doe', 'NEW York', 0.10),
('S002', 'Jane Smith', 'Los Angeles', 0.12),
('S003', 'Jim Brown', 'Chicago', 0.11),
('S004', 'Jake White', 'Houston', 0.09), 
('S005', 'Paul Wilson', 'London', 0.15);
SELECT * FROM Salesman;
DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders(
    ONO TEXT PRIMARY KEY,
    ODate TEXT,
    Amount REAL,
    SNO TEXT
);
INSERT INTO Orders (ONO, ODate, Amount, SNO) VALUES
('O001', '2023-01-15', 1500.00, 'S001'),
('O002', '2023-02-20', 2500.00, 'S002'),
('O003', '2023-03-10', 1800.00, 'S001'),
('O004', '2023-04-05', 3000.00, 'S003'),
('O005', '2023-05-12', 2200.00, 'S004');
SELECT * FROM Orders;
SELECT NAME, COMMISION FROM Salesman;
SELECT NAME FROM Salesman WHERE CITY = 'London';