USE startersql;
SELECT * from users;
ALTER TABLE users
ADD salary DECIMAL(10,2);
SELECT * from users WHERE gender in ('Male','Female');
SELECT * FROM users WHERE gender = 'Female' AND salary > '70000';
SELECT * FROM users WHERE gender = 'Male' AND salary > '70000';
SELECT * FROM users WHERE gender = 'Male' OR salary > '65000';
UPDATE users
SET salary = 
    CASE 
        WHEN id = 123 THEN 30000
        WHEN id = 124 THEN 35000
        WHEN id = 125 THEN 28000
        WHEN id = 126 THEN 40000
        WHEN id = 127 THEN 32000
    END
WHERE id IN (123,124,125,126,127);
SELECT * from users;
SELECT * FROM users WHERE gender = 'Male' OR salary > '65000' ORDER BY date_of_birth ASC;
SELECT * FROM users WHERE gender = 'Male' OR salary > '65000' ORDER BY date_of_birth DESC;
SELECT * FROM users WHERE salary > 60000 ORDER BY created_at_ DESC LIMIT 5;
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;