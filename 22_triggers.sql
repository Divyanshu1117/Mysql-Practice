USE startersql;
CREATE TABLE user_log(
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
	name VARCHAR(100),
	created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS user_log;

DELIMITER $$

CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
	 INSERT INTO user_log(user_id, name)
	 VALUES(NEW.id, NEW.name);
 END $$
 
 DELIMITER ;
 
 INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
 ('Rohan Kamboj', 'rohan18@gmail.com', 'Male', '2000-08-18', 35000);
 
 INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
 ('Lovish Kamboj', 'lovish18@gmail.com', 'Male', '1999-10-26', 35000);
 
 SELECT * FROM user_log;
 
 DROP TRIGGER IF EXISTS after_user_insert;