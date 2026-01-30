CREATE TABLE IF NOT EXISTS NOBEL_WIN (
    YEAR INTEGER,
    SUBJECT TEXT,
    WINNER TEXT,
    COUNTRY TEXT,
    CATEGORY TEXT
    );
INSERT INTO NOBEL_WIN (YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY) VALUES
(1965, 'Physics', 'Richard P. Feynman', 'USA','Science'),
(1979, 'Chemistry', 'Herbert C. Brown', 'USA','Science'),
(1983, 'Literature', 'William Golding', 'UK','Literature'),
(1991, 'Peace', 'Aung San Suu Kyi', 'Myanmar','Peace'),
(2006, 'Economics', 'Edmund S. Phelps', 'USA','Economics');
SELECT * FROM NOBEL_WIN WHERE SUBJECT NOT LIKE 'P%';