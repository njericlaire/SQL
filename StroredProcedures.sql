--STORED PROCEDURES-

CREATE PROCEDURE sp_SelectData
AS
SELECT * FROM DimProduct

EXECUTE sp_SelectData

----------------------------------------
CREATE PROCEDURE sp_Product(@COLOR VARCHAR(20))
AS
SELECT * FROM DimProduct WHERE COLOR = @COLOR

EXEC SP_PRODUCT 'RED'

CREATE PROCEDURE sp_Product2(@COLOR VARCHAR(20),@PRICE MONEY)
AS
SELECT * FROM DimProduct WHERE COLOR = @COLOR AND ListPrice>@PRICE

EXEC SP_PRODUCT2 'RED',1000

-------------------------------------------------------------------
CREATE PROCEDURE sp_Product3(@COLOR VARCHAR(20)='RED')--ASSIGN A DEFAULT VALUE
AS
SELECT * FROM DimProduct WHERE COLOR = @COLOR

EXEC sp_Product3

EXEC sp_Product3 'WHITE ' 



