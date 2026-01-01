CREATE TABLE SalesTran2(
ProductId int foreign key references Product2(ProductId),
InvoiceNum varchar(10),
Qty int,
Sales money
)

CREATE TABLE Product2(
ProductId int primary key,
ProductName varchar(50),
UnitPrice money)