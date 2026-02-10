SELECT title, score FROM hacker_news ORDER BY score DESC;
SELECT user, AVG(score) AS average_score FROM hacker_news GROUP BY user ORDER BY average_score DESC;
SELECT url, COUNT(*) AS total FROM hacker_news GROUP BY url ORDER BY total DESC;
SELECT title, score FROM hacker_news WHERE score > 100 ORDER BY score DESC;