--top is used to fetch the top n number of records
SELECT TOP 100 * FROM DimProduct

SELECT TOP 100 ProductKey,EnglishProductName, ListPrice FROM DimProduct

--TO FETCH THE LAST RECORD USING TOP
SELECT TOP 100* FROM DimProduct
ORDER BY ProductKey DESC
--THIS IS BECAUSE TOP RUNS AFTER ORDER BY
SELECT * FROM (
SELECT TOP 100* FROM DimProduct
ORDER BY ProductKey DESC) T
ORDER BY ProductKey

SELECT TOP 10 PERCENT * FROM DimProduct--SELECT TOP 10 PERCENT OF THE WHOLE TABLE

--TOP SCENARIO- TOP 10 PRODUCT BASED ON SALES
SELECT TOP 10 ProductKey, SUM(SalesAmount) TotalSales FROM FactInternetSales
GROUP BY ProductKey
ORDER BY TotalSales DESC--ORDER BY IS COMPULSARY

SELECT TOP 10 P.EnglishProductName, SUM(F.SalesAmount) TotalSales
FROM FactInternetSales F JOIN DimProduct P
ON F.ProductKey=P.ProductKey
GROUP BY P.EnglishProductName
ORDER BY TotalSales DESC



