USE startersql;
SELECT * FROM users;

DELIMITER $$
CREATE PROCEDURE select_users()
BEGIN
    SELECT * FROM users;
END $$
DELIMITER ;
CALL select_users();

DELIMITER $$
CREATE PROCEDURE AddUser(
	IN p_name VARCHAR(100),
	IN p_email VARCHAR(100),
	IN p_gender ENUM('Male', 'Female', 'Other'),
	IN p_dob DATE,
	IN p_salary INT
)
BEGIN
    INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
    SELECT * FROM users;
END $$
DELIMITER ;
CALL AddUser('John Kumar', 'johan@harry.com', 'Male', '1990-07-21', 74000);

SHOW PROCEDURE STATUS WHERE db = 'startersql';
DROP PROCEDURE IF EXISTS AddUser;