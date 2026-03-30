CREATE DATABASE startersql;
USE startersql;
CREATE TABLE users(
id INT auto_increment PRIMARY KEY,
name VARCHAR(100) NOT NULL,
gender ENUM('Male','Female','Other'),
date_of_birth DATE,
created_at_ TIMESTAMP DEFAULT current_timestamp
);
SELECT * FROM users;
SELECT id, name FROM users;
-- DROP DATABASE startersql;
RENAME TABLE users to programmers;
SELECt * from programmers;
RENAME TABLE programmers to users;
ALTER TABLE users ADD column is_active BOOLEAN DEFAULT true;
SELECT * from users;
ALTER TABLE users DROP COLUMN is_active;
SELECT * from users;
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);
SELECT * from users;
ALTER TABLE users MODIFY COLUMN date_of_birth VARCHAR(100) AFTER id;
SELECT * from users;
ALTER TABLE users ADD email VARCHAR(100);
SELECT * from users;
ALTER TABLE users MODIFY COLUMN date_of_birth VARCHAR(100) AFTER name;
SELECT * from users;
ALTER TABLE users MODIFY COLUMN date_of_birth VARCHAR(100) AFTER gender;
SELECT * from users;
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;
SELECT * from users;
INSERT INTO users VALUES('abc@gmail.com', 123 , 'Divyanshu', 'Male', '2000-08-18', DEFAULT);
SELECT * from users;
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Pasha', 'cold@gmail.com', 'Male', '2000-02-26');
SELECT * from users;
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Lovish', 'Lovish@gmail.com', 'Male', '1999-08-26'),
('Lakshay', 'Lakshay@gmail.com', 'Male', '2000-09-04'),
('Shubham', 'Shubham@gmail.com', 'Male', '2000-02-14');
SELECT * from users;