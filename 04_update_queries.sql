USE startersql;
SELECT * FROM users;
UPDATE users SET salary = 45000, email = 'divyanshu@gmail.com' WHERE id = 123;
UPDATE users SET salary = 70000 WHERE id = 124;
UPDATE users SET name = 'Aisha Khan' , email = 'aisha@example.com' WHERE id = 134;  
UPDATE users SET salary = salary + 20000 WHERE salary < 60000;
SET SQL_SAFE_UPDATES = 0;
UPDATE users
SET gender = 'Other'
WHERE name = 'Pasha';