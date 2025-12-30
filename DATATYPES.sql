--DATA TYPES
--INTEGERS
--tinyint- 1 byte
--smallint- 2 bytes
--int-4 bytes
--bigint-8 bytes
--float 
--real
--money
--smallmoney 
--decimal 
--numeric
--date 
--datetime
--datetime2
--smalldatetime 
--time
--varchar
--char
--nvarchar
--nchar

--unique identifier
SELECT NEWID()--RETURNS NEW VALUE EVERYTIME IT IS USED

CREATE TABLE tblEMPLOYEES(
EmployeeId UNIQUEIDENTIFIER,
EmloyeeName VARCHAR(20)
)

INSERT INTO tblEMPLOYEES(EmployeeId,EmloyeeName) VALUES(
NEWID() ,'Claire'),
(NEWID() , 'NJERI'
)

CREATE TABLE tblEMPLOYEES(
EmployeeId UNIQUEIDENTIFIER DEFAULT NEWID(),
EmloyeeName VARCHAR(20)
)

--DATA TYPE CONVERSION
SELECT '10' + '20'

SELECT '20' + 10

SELECT CAST(20 AS INT)

SELECT CAST(ListPrice AS MONEY) FROM DimProduct

SELECT CONVERT(INT,'20')

SELECT CONVERT(INT, ListPrice) FROM DimProduct