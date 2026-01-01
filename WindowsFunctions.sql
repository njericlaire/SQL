CREATE TABLE EMPLOYEES(
	EmployeeId int primary key identity(1,1),
	EmpName varchar(100),
	City varchar(30),
	Department varchar(50),
	Salary money
)

INSERT INTO EMPLOYEES(EmpName,City,Department,Salary)VALUES
('John','NYC','IT',40000),
('Amanda','London','Sales',40000),
('Aman','Pune','IT',30000),
('Rahul','Pune','IT',26000),
('Sam','London','Sales',30000),
('Rakesh','Delhi','IT',20000),
('Suraj','Pune','Sales',12000),
('Ajay','Delhi','Sales',10000),
('Ankita','Delhi','Sales',10000),
('Sudeep','Delhi','IT',36000),
('Sanket','Pune','IT',40000)

SELECT * FROM EMPLOYEES

--WINDOWS FUNCTIONS
SELECT EmpName,City,Department,Salary,
ROW_NUMBER() OVER(ORDER BY EmpName)--GENERATE UNIQUE NUMBERS FOR EVERY ROW BUT REQUIRES A UNIQUE NUMBER
FROM EMPLOYEES

SELECT EmpName,City,Department,Salary,
100+ROW_NUMBER() OVER(ORDER BY EmpName)--GENERATE UNIQUE NUMBERS FOR EVERY ROW BUT REQUIRES A UNIQUE NUMBER
FROM EMPLOYEES

SELECT EmpName,City,Department,Salary,
ROW_NUMBER() OVER(PARTITION BY CITY ORDER BY EmpName)--GENERATE UNIQUE NUMBERS FOR EVERY ROW BUT REQUIRES A UNIQUE NUMBER
FROM EMPLOYEES

--RANK EMPLOYEES BY SALARY -U USE RANK
SELECT EmpName,City,Department,Salary,
RANK() OVER(ORDER BY SALARY DESC)
FROM EMPLOYEES
--ROW NUMBER GURANTEES UNIQUENESS AND RANK DOES NOT

SELECT EmpName,City,Department,Salary,
RANK() OVER(PARTITION BY CITY ORDER BY SALARY DESC)
FROM EMPLOYEES

SELECT EmpName,City,Department,Salary,
DENSE_RANK() OVER(ORDER BY SALARY DESC)
FROM EMPLOYEES

--LAG(GO BEHIND) AND LEAD(GO AHEAD)
CREATE TABLE Orders(
	ProductId int NULL,
	InvoiceNum varchar(10) NULL,
	OrderDate date NULL,
	City varchar(20) NULL,
	Qty int NULL
) 

INSERT INTO Orders (ProductId, InvoiceNum, OrderDate, City, Qty) VALUES 
(1, 'SOB982', '2022-01-02' , 'Delhi', 3000),
(2, 'SOB983', '2022-01-02' , 'NYC', 2500),
(3, 'SOB984', '2022-01-02' , 'London', 376),
(1, 'SOB985', '2022-01-03' , 'London', 2100),
(2, 'SOB986', '2022-01-03' , 'NYC', 4000),
(4, 'SOB987', '2022-01-03' , 'Delhi', 838),
(1, 'SOB988', '2022-01-04' , 'London', 2100),
(2, 'SOB989', '2022-01-04' , 'NYC', 4000),
(4, 'SOB990', '2022-01-04' , 'Delhi', 838)

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LAG(Qty,1)OVER(ORDER BY OrderDate)
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LAG(Qty,1,0)OVER(ORDER BY OrderDate)
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LAG(Qty,2,0)OVER(ORDER BY OrderDate)
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LEAD(Qty,1)OVER(PARTITION BY City ORDER BY OrderDate)
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
FIRST_VALUE(QTY)OVER(ORDER BY OrderDate )
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
FIRST_VALUE(QTY)OVER(PARTITION BY City ORDER BY OrderDate )
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LAST_VALUE(QTY)OVER(ORDER BY OrderDate )
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LAST_VALUE(QTY)OVER(ORDER BY (SELECT 0)) 
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty,
LAST_VALUE(QTY)OVER(PARTITION BY CITY ORDER BY (SELECT 0)) 
FROM Orders