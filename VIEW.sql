 --VIEWS ARE VIRTUAL TABLES THAT QUERY THE ACTUAL TABLES THAT WE HAVE

CREATE VIEW VwSelectData
AS
SELECT ProductKey,EnglishProductName,ListPrice FROM DimProduct

SELECT * FROM VwSelectData

CREATE VIEW VwDailySales
AS
SELECT P.EnglishProductName,F.OrderDate,
SUM(SalesAmount) TotalSales
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
GROUP BY P.EnglishProductName,F.OrderDate

SELECT * FROM VwDailySales

--ALTER VIEW
ALTER VIEW VwSelectData
AS
SELECT ProductKey,EnglishProductName,ListPrice,Color FROM DimProduct

--drop view
DROP VIEW VwSelectData

