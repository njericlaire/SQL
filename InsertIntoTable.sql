CREATE TABLE Employees(
	EmployeeId int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary Float
)

INSERT INTO Employees VALUES (1,'JOHN','2020-11-10',50000)

INSERT INTO Employees(EmployeeId,EmployeeName,DOJ,Salary) 
VALUES (2,'CLAIRE','2021-3-10',56000),
(3,'NJERI','2026-7-6',56600),
(4,'RISPER','2020-9-8',60000),
(5,'WAIRIMU','2021-1-11',76000)