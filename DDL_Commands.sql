CREATE DATABASE emp;
USE emp;
CREATE TABLE emp(
code CHAR(5),
name VARCHAR(20),
salary INT
);
DESC emp;
ALTER TABLE emp
ADD mobileno CHAR(10);
DESC emp;
ALTER TABLE emp
MODIFY name VARCHAR(50);
DESC emp;
ALTER TABLE emp
DROP COLUMN mobileno;
DESC emp;
ALTER TABLE emp
ADD mobileno CHAR(10);
DESC emp;
DROP TABLE emp;
DESC emp;
CREATE TABLE emp(
code CHAR(5),
name VARCHAR(20),
salary INT
);
ALTER TABLE emp
ADD mobileno CHAR(10);
DESC emp;
INSERT INTO emp (code, name, salary) VALUES
('E101', 'Rahul', 20000),
('E102', 'Amit', 25000),
('E103', 'Neha', 30000);
SELECT * FROM emp;
TRUNCATE TABLE emp;
SELECT * FROM emp;
INSERT INTO emp VALUES
('E101','Rahul',20000,'9876543210'),
('E102','Amit',25000,'9123456780'),
('E103','Neha',30000,'9988776655');
SELECT * FROM emp;