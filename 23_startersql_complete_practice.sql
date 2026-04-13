USE startersql;
SELECT * FROM users;

SELECT * FROM users WHERE name LIKE '_a%';
SELECT * FROM users WHERE name LIKE '_a_%';
SELECT * FROM users WHERE name LIKE '_a_h%';

SELECT * FROM users
ORDER BY id
LIMIT 5;

SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

SELECT * FROM users
ORDER BY id
LIMIT 10, 5;

SELECT gender FROM users;
SELECT DISTINCT gender FROM users;

SELECT * FROM addresses;
TRUNCATE TABLE addresses;

ALTER TABLE users
CHANGE COLUMN city location VARCHAR(150);

ALTER TABLE users
MODIFY COLUMN salary BIGINT;