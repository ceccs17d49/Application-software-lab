USE mydb;
CREATE TABLE IF NOT EXISTS class5(id INT NOT NULL,name VARCHAR(20) NOT NULL,PRIMARY KEY(id));
INSERT INTO class5 VALUES(1,'Sachin'),(2,'Ravi'),(3,'Abhishek');
SAVEPOINT SP1;
INSERT INTO class5 VALUES(4,'Byju');
ROLLBACK TO SP1;
SELECT * FROM class5;
COMMIT;