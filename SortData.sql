SELECT * FROM DimProduct
ORDER BY Color

SELECT * FROM DimProduct
ORDER BY Color DESC

SELECT ProductKey,EnglishDescription,Color
FROM DimProduct
ORDER BY ListPrice DESC

SELECT ProductKey,EnglishDescription,Color,ListPrice
FROM DimProduct
ORDER BY Color, ListPrice DESC 

SELECT ProductKey,EnglishDescription,Color,ListPrice
FROM DimProduct
ORDER BY Color DESC, ListPrice DESC 

SELECT ProductKey,EnglishDescription,Color,ListPrice
FROM DimProduct
ORDER BY 1 DESC