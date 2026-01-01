CREATE TABLE tblEmps(
EmployeeId int primary key,
ParentEmployeeId int,
EmployeeName varchar(100),
Title varchar(100),
Salary money
)

insert into tblEmps(EmployeeId,ParentEmployeeId,EmployeeName,Title,Salary)
values(1,null,'John Smith','Founder',1000000),
(2,1,'Sam Cook','CEO',500000),
(3,2,'Amanda Johnson','Senior VP',1000000),
(4,3,'Mike Henry','VP',40000),
(5,4,'Rakesh Dev','Manager',50000),
(6,5,'Rehan Shaikh','Archetect',60000)

insert into tblEmps(EmployeeId,ParentEmployeeId,EmployeeName,Title,Salary)
values(7,5,'Ankit Kumar','Lead-Developer',30000),
(8,7,'Aman Patel','Associate',15000),
(9,7,'Joe Stone','Associate',13000),
(10,7,'Mitchel Woods','Associate',14000)

select * into tblEmps2 from tblEmps

--UNION COMBINES ROWS TOGETHER FROM 2 TABLES
SELECT *FROM tblEmps
UNION
SELECT * FROM tblEmps2

SELECT *FROM tblEmps
UNION ALL
SELECT * FROM tblEmps2

--UNION REMOVES ALL THE DUPLICATE HENCE IT WILL REMOVE ALL THE ROWS BUT UNION ALL DOES NOT
--BOTH THE TABLES SHOULD HAVE THE SAME NUMBER OF COLUMNS
--THE SEQUENCE OF COLUMNS SHOULD BE THE SAME

--IF SEQUENCE IS NOT THE SAME
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps
UNION ALL
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps2

--IF COLUMN IS NOT THERE
SELECT EmployeeId,EmployeeName,NULL TITLE,Salary FROM tblEmps
UNION ALL
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps2
