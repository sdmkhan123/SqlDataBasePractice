create database PayRollServiceDB
use PayRollServiceDB

create table EmployeePayRoll(
empId int identity (1,1) primary key,
empName varchar(256) Not Null,
empSalary int Not Null,
startDate Date Not Null
)

insert into EmployeePayRoll Values
('Saddam', 100000, '2021/10/18'),
('Eqbal', 200000, '2021/10/18'),

--DROP TABLE EmployeePayRoll;
--DELETE FROM EmployeePayRoll WHERE empId = 6;

UPDATE EmployeePayRoll
SET startDate = '2021/07/15'
Where empId = 1;

Select * From EmployeePayRoll Where startDate BETWEEN CAST ('2021/10/18' AS DATE) AND GETDATE()

insert into EmployeePayRoll Values
('Samiksha', 2, '2002/10/18'),
('Dhanshree', 1, '1990/10/18')

Alter Table EmployeePayRoll ADD Gender char (1)

UPDATE EmployeePayRoll
SET Gender = 'M'
Where empId = 1 OR empId = 2
UPDATE EmployeePayRoll
SET Gender = 'M'
Where empId = 3 OR empId = 4

--AS use as a temparary or at runtime rename
Select SUM (empSalary) AS 'CTC' From EmployeePayRoll
Select SUM (empSalary) AS 'CTC' From EmployeePayRoll Where Gender = 'M'
Select SUM (empSalary) AS 'CTC' From EmployeePayRoll Group By Gender
Select SUM (empSalary) AS 'CTC' From EmployeePayRoll Where Gender = 'M' Group By Gender
Select Gender, SUM (empSalary) AS 'CTC' From EmployeePayRoll Where Gender = 'M' Group By Gender
Select Gender, SUM (empSalary) AS 'CTC' From EmployeePayRoll Group By Gender
Select Gender, AVG (empSalary) AS 'AvgCTC' From EmployeePayRoll Group By Gender
Select MIN (empSalary) AS 'minimum sal' From EmployeePayRoll
Select MAX (empSalary) AS 'Maximum sal' From EmployeePayRoll
Select COUNT (Gender) AS 'Total Gender Count' From EmployeePayRoll
Select COUNT (Gender) AS 'Total male Gender Count' From EmployeePayRoll Where Gender  = 'M'
Select COUNT (Gender) AS 'Total Female Gender Count' From EmployeePayRoll Where Gender  = 'F'
Select COUNT (Gender) From EmployeePayRoll

--Permanent column rename
SP_RENAME 'EmployeePayRoll.empSalary', 'empCTCSalary'
SP_RENAME 'EmployeePayRoll.empCTCSalary', 'empSalary'

--==========================================================
--JOIN___________________________
create table EmpCompany(
CompId int identity (1,1) primary key,
CompName varchar(256) Not Null,
CompRevenue int Not Null
)
Alter Table EmpCompany ADD empName varchar (256)
Insert Into EmpCompany Values
('BridgeLabz', 1),
('EasyRewardsz', 100000),
('Happiest_Mind', 1),
('DELL_EMC', 1)

UPDATE EmpCompany
SET CompRevenue = 100000
Where CompId = 4
UPDATE EmpCompany
SET empName = 'SDM Khan'
Where CompId = 1 OR CompId = 2
UPDATE EmpCompany
SET empName = 'Eqbal'
Where CompId = 3 OR CompId = 4
--INNER join
Select * From EmployeePayRoll Emp INNER JOIN EmpCompany Comp ON Emp.empId = Comp.CompId
--OUTER JOIN (Left and Right outer join)
Select * From EmployeePayRoll Emp LEFT JOIN EmpCompany Comp ON Emp.empId = Comp.CompId

--========================================================================================
select * from EmpCompany;
select * from EmployeePayRoll;