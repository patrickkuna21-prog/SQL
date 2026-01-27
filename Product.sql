CREATE TABLE IF NOT EXISTS Product (
    PRO_ID TEXT PRIMARY KEY,
    PRO_NAME TEXT,
    PRO_PRICE TEXT, 
    PRO_COM TEXT
);
INSERT INTO Product (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) VALUES
('P001', 'Laptop', '1000', 'TechCorp'),
('P002', 'Smartphone', '500', 'MobileInc'),
('P003', 'Tablet', '300', 'GadgetCo'),
('P004', 'Monitor', '200', 'DisplayMakers'),
('P005', 'Keyboard', '50', 'InputDevices');
SELECT PRO_PRICE, PRO_NAME
    FROM Product
    WHERE PRO_PRICE =
    (SELECT MIN(PRO_PRICE)FROM Product);
SELECT PRO_NAME, PRO_PRICE
    FROM Product
    WHERE PRO_PRICE =
    (SELECT MAX(PRO_PRICE)FROM Product);
SELECT * FROM Product;