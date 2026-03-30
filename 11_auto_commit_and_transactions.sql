USE startersql;
SELECT * FROM users;
SET autocommit = 1;
COMMIT;
DELETE from users WHERE id = 6;
ROLLBACK;
SELECT * FROM users;
COMMIT;