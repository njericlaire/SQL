CREATE TABLE Employees(
	EmployeeId int primary key,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary Float,
	Email Varchar(100) unique
)