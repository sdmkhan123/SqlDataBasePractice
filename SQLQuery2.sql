CREATE DATABASE DemoDB;
CREATE TABLE Person_Table (
    PersonID int,
    FirstName varchar(255),
	LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
INSERT INTO Person_Table
VALUES (1, 'Saddam', 'Khan', 'UP', 'Etah');
INSERT INTO Person_Table
VALUES (2, 'Murali', 'Krishna', 'Andhra', 'NA');
INSERT INTO Person_Table
VALUES (3, 'Vinayak', 'NA', 'MH', 'NA');

SELECT * FROM Person_Table;
SELECT * FROM Person_Table WHERE PersonID = 1;
DELETE FROM Person_Table WHERE PersonID = 1;
DROP TABLE Person_Table;

UPDATE Person_Table
SET FirstName = 'Pavan'
Where PersonID = 3;

CREATE TABLE NumTable (
    NumId int,
	Num1 int,
);

INSERT INTO NumTable
VALUES (1, 2);
INSERT INTO NumTable
VALUES (2, 2);
INSERT INTO NumTable
VALUES (3, 5);
INSERT INTO NumTable
VALUES (4, 1);

Select * From NumTable;

Delete From NumTable Where Num1 = 1;

SELECT * FROM NumTable
ORDER BY Num1;