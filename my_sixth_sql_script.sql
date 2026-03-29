USE startersql;
DROP TABLE users;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM users;
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Divyanshu1', 'divyanshu1@gmail.com', 'Male', '1905-08-18', 75000.00);
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);
SET SQL_SAFE_UPDATES = 1;
ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-01-01');
