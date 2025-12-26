SELECT ProductKey,SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey

SELECT ProductKey,CustomerKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey, CustomerKey

SELECT ProductKey,SUM(SalesAmount) AS TotalSales,
AVG(SalesAmount) AvgSales
FROM FactInternetSales
GROUP BY ProductKey


