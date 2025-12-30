SELECT EmployeeKey,FirstName, LastName, MiddleName FROM DimEmployee

SELECT FirstName + ' ' + LastName FROM DimEmployee

SELECT FirstName + SPACE(1) + LastName FROM DimEmployee

SELECT FirstName + SPACE(1) + ISNULL(MiddleName,'') + SPACE(1) + LastName FROM DimEmployee

SELECT CONCAT(FirstName,SPACE(1), MiddleName, SPACE(1), LastName ) FROM DimEmployee

SELECT CONCAT_WS(SPACE(1),FirstName, MiddleName, LastName ) FROM DimEmployee

SELECT EmployeeKey,FirstName, LastName, MiddleName,
CONCAT_WS(SPACE(1),FirstName, MiddleName, LastName ) FULLNAME FROM DimEmployee

SELECT EmployeeKey,FirstName, LastName, MiddleName INTO EmployeeBk FROM DimEmployee

ALTER TABLE EmployeeBk
ADD FullName VARCHAR(50)

SELECT *FROM EmployeeBk

UPDATE EmployeeBk
SET FULLNAME =CONCAT_WS(SPACE(1),FirstName, MiddleName, LastName )
 