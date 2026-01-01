SELECT * FROM DimProduct

SELECT * FROM FactInternetSales

SELECT P.ProductKey,P.EnglishProductName,F.SalesAmount 
FROM DIMProductBKUP P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey

SELECT P.ProductKey,P.EnglishProductName,F.SalesAmount 
FROM DIMProductBKUP P LEFT JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey

--LEFT ANTIJOIN
SELECT P.ProductKey,P.EnglishProductName
FROM DIMProductBKUP P LEFT JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
WHERE F.ProductKey IS NULL

SELECT P.EnglishProductName,SUM(F.SalesAmount) 
FROM DIMProductBKUP P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
GROUP BY P.EnglishProductName

--JOIN 3 TABLES
SELECT P.EnglishProductName,F.SalesAmounT, C.FirstName
FROM DIMProductBKUP P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
JOIN DimCustomer C ON C.CustomerKey=F.CustomerKey

SELECT P.EnglishProductName,SUM(F.SalesAmount) Totalsales, C.FirstName
FROM DIMProductBKUP P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
JOIN DimCustomer C ON C.CustomerKey=F.CustomerKey
GROUP BY C.FirstName,P.EnglishProductName

--JOIN USING EXPRESSIONS
SELECT 'P-'+FORMAT(ProductKey,'0000')AS ProductId,EnglishProductName INTO DimProducts FROM DimProduct

SELECT * FROM DimProducts P JOIN FactInternetSales F
ON RIGHT(P.ProductId,4)=F.ProductKey

--RIGHT AND LEFT JOINS ARE OUTER JOINS
--FULL OUTER JOINS IS A COMBINATION OF THE TWO
