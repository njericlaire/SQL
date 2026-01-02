-- COMMON TABLE EXPRESSION - A TEMPORARY NAMED RESULT SET

WITH CteSelectData
AS
(
	SELECT ProductKey, year(OrderDate) OrderYear, SalesAmount
	FROM FactInternetSales
)
SELECT ProductKey,OrderYear,SUM(SalesAmount) 
FROM CteSelectData
GROUP BY ProductKey,OrderYear

WITH CteSales
AS
(
	SELECT ProductKey, SUM(SalesAmount) TotalSales
	from FactInternetSales
	GROUP BY ProductKey
),
CteProducts
AS
(
	SELECT ProductKey,EnglishProductName FROM DimProduct
)
SELECT P.PRODUCTKEY, P.ENGLISHPRODUCTNAME, S.TOTALSALES FROM CteSales S JOIN CteProducts P ON S.PRODUCTKEY=P.PRODUCTKEY

--RECURCIVE CTE
WITH Ctenumbers(n)
AS
(
	SELECT 1 AS NUMS
	UNION ALL
	SELECT N+1 FROM Ctenumbers
	WHERE N <10

)SELECT * FROM Ctenumbers