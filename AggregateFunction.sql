SELECT SUM(SalesAmount) AS TotalSales FROM FactInternetSales

SELECT SUM(SalesAmount) TotalSales FROM FactInternetSales

SELECT SUM(SalesAmount) [Total Sales] FROM FactInternetSales



SELECT AVG(SalesAmount) FROM FactInternetSales

SELECT MAX(SalesAmount) FROM FactInternetSales

SELECT MIN(SalesAmount) FROM FactInternetSales

SELECT SUM(SalesAmount) AS TotalSales,
AVG(SalesAmount)  AS AvgSales
FROM FactInternetSales

SELECT COUNT(*) FROM DimProduct
SELECT COUNT(20) FROM DimProduct

SELECT COUNT(ListPrice) FROM DimProduct

SELECT COUNT(*) FROM DimProduct
WHERE ListPrice IS  NULL
