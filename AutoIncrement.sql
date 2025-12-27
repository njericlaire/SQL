CREATE TABLE Employees(
	EmployeeId int primary key identity(1,1),--identity sets the first row to be one and increments it by one every time
	EmployeeName varchar(100),
	DOJ datetime,
	Salary Float check(salary>=10000),
	Gender char(1) check(Gender='F' or Gender='M'),
	Email Varchar(100) unique,
	City varchar(100) default 'london'
)