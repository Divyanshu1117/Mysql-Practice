USE startersql;
SELECT * FROM users;
DELETE FROM users WHERE salary < 65000;
DELETE FROM users WHERE id = 136;
DELETE FROM users
WHERE salary < 50000;
DELETE FROM users
WHERE salary is NULL;