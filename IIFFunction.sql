SELECT IIF(10=10,1,0)

SELECT IIF(100=10,1,0)

SELECT ProductKey,EnglishProductName, Color,
IIF(Color='Red','Rd','NA')
FROM DimProduct

SELECT ProductKey,EnglishProductName, Color,
IIF(Color='Red','Rd',IIF(Color='Silver','Sl','NA'))--MAXIMUM NESTING IS 10
FROM DimProduct

SELECT ProductKey,EnglishProductName, ListPrice,
IIF(ListPrice>=3000,'High',IIF(ListPrice>=2000,'Avg','Low'))--MAXIMUM NESTING IS 10
FROM DimProduct