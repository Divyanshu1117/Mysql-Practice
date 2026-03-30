USE startersql;
SELECT * FROM users;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'Male';
SELECT COUNT(*) FROM users WHERE gender = 'Female';
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
SELECT SUM(salary) AS total_dv FROM users;
SELECT AVG(salary) AS avg_salary FROM users;
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;
SELECT gender, SUM(salary) AS avg_salary FROM users GROUP BY gender;
SELECT name, LENGTH(name) AS name_len FROM users;
SELECT id, gender, name, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) as lower, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, NOW() as time, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, MONTH(Now()) as time, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, YEAR(Now()) as time, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, YEAR(date_of_birth) as yob, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, DAY(date_of_birth) as day, LENGTH(name) AS name_len FROM users;
SELECT id, gender, LOWER(name) AS lower_name, CONCAT(LOWER(name), ' 1117') AS new_name, MONTH(date_of_birth) as yob, LENGTH(name) AS name_len FROM users;
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users;
SELECT salary, ROUND(salary) AS rounded, FLOOR(salary) AS floored, CEIL(salary) AS ceiled FROM users;
SELECT id, MOD(id, 2) AS remainder FROM users;
SELECT name, gender,
    if(gender = 'Female', 'Yes', 'No') AS is_female
FROM users;                     