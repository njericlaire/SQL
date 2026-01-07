SELECT TOP 10 
P.ProductKey,
P.EnglishProductName AS "Detail.ProductName",
P.ListPrice AS "Detail.Price",
p.StartDate AS "Dates.Start"
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
FOR JSON PATH

SELECT TOP 10 
P.ProductKey,
P.EnglishProductName AS "Detail.ProductName",
P.ListPrice AS "Detail.Price",
p.StartDate AS "Dates.Start.StartDate"
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey=F.ProductKey
FOR JSON PATH


