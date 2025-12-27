CREATE TABLE Employees(
	EmployeeId int primary key,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary Float check(salary>=10000),
	Gender char(1) check(Gender='F' or Gender='M'),
	Email Varchar(100) unique
)