USE startersql;
SELECT gender, AVG(salary) FROM users GROUP BY gender;
SELECT gender, AVG(salary) AS 'Avg' FROM users GROUP BY gender;
SELECT gender, AVG(salary) AS 'Average Salary' FROM users GROUP BY gender;
SELECT gender as "Gender", AVG(salary) AS 'Average Salary', COUNT(*) AS 'Count' FROM users GROUP BY gender;

SELECT gender as "Gender", AVG(salary) AS 'Average Salary', COUNT(*) AS 'Count' 
FROM users WHERE id < 5000 GROUP BY gender 
HAVING AVG(salary) < 61000 AND COUNT(*) < 19;

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;
SELECT * FROM users;

SELECT gender as "Gender", AVG(salary) AS 'Average Salary', COUNT(*) AS 'Count' 
FROM users WHERE id < 5000 GROUP BY gender WITH ROLLUP 
HAVING AVG(salary) < 69000;