USE startersql;
SELECT * FROM users;
SHOW indexes FROM users;
CREATE INDEX idx_email ON users(gender);
CREATE INDEX idx_gender_salary ON users(gender, salary);
SELECT * FROM users WHERE email = "aarav@example.com" AND gender = "Male";
SELECT * FROM users
WHERE gender = "Female" AND salary > 70000;
DROP INDEX idx_email ON users;