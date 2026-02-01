CREATE TABLE IF NOT EXISTS Salesman(
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Commision TEXT
    );
INSERT INTO Salesman (Salesman_id, name, city, Commision) VALUES
("5001", "James Hoog", "New York", "0.15"),
("5002", "Nail Knite", "Paris", "0.13"),
("5003", "Pit Alex", "London", "0.11"),
("5004", "Mc Lyon", "San Jose", "0.14"),
("5007", "Paul Adam", "Rome", "0.13"),
("5006", "Lauson Hen", "San Jose", "0.12");

CREATE TABLE IF NOT EXISTS Customer(
    customer_id TEXT,
    cust_name TEXT PRIMARY KEY,
    city TEXT,
    grade TEXT,
    Salesman_id TEXT
    );
INSERT INTO Customer (customer_id, cust_name, city, grade, Salesman_id) VALUES
("3002", "nick rimando", "new york", "100", "5001"),
("3007", "brad davis", "new york","200", "5002"),
("3005", "graham zusi", "california", "200", "5003"),
("3008", "julian green","london", "300", "5002"),
("3004", "fabian johnson", "paris", "300", "5006"),
("3003", "jozy altidor", "moscow", "200", "5007"),
("3001", "brad guzan", "london", "", "5005");

CREATE TABLE IF NOT EXISTS Orders(
    ord_no TEXT PRIMARY KEY, 
    purch_amt TEXT,
    ord_date TEXT,
    customer_id TEXT,
    Salesman_id TEXT
    );
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, Salesman_id) VALUES
("70001", "150.5", "2012-10-05", "3002", "5001"),
("70009", "270.65", "2012-09-10", "3007", "5002"),
("70002", "65.26", "2012-10-05", "3005", "5003"),
("70004", "110.5", "2012-08-17", "3004", "5004"),
("70007", "948.5", "2012-09-10", "3008", "5007"),
("70005", "2400.6", "2012-10-11", "3003", "5006");

SELECT * FROM Customer ;
SELECT * FROM Salesman ;
SELECT * FROM Orders ;

SELECT Customer.cust_name, Salesman.name, Salesman.city
FROM Customer
JOIN Salesman ON Customer.city = Salesman.city;

SELECT Customer.cust_name, Salesman.name 
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id;

SELECT Orders.ord_no, Customer.cust_name, Orders.customer_id, Orders.Salesman_id
FROM Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id;
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id;
WHERE Customer.city <> Salesman.city;

SELECT Orders.ord_no, Customer.cust_name
FROM Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id

SELECT Customer.cust_name AS "Customer", Customer.grade AS "Grade"
FROM Orders
JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
JOIN Customer ON Orders.customer_id = Customer.customer_id
WHERE Customer.grade IS NOT NULL;

SELECT Customer.cust_name AS "Customer",
Customer.city AS "City",
Salesman.name AS "Salesman",
Salesman.Commision
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id
WHERE Salesman.Commision BETWEEN 0.12 AND 0.14;

SELECT *
FROM Customer
JOIN Orders ON Customer.customer_id = Orders.customer_id
WHERE Orders.ord_date = '2012-10-05';