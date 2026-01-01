SELECT ProductKey,EnglishProductName,Color,
CASE Color
WHEN 'RED' THEN 'Rd'
ELSE 'NA'
END CODE
FROM DimProduct

SELECT ProductKey,EnglishProductName,Color,
CASE Color
WHEN 'RED' THEN 'Rd'
WHEN 'BLACK' THEN 'Bl'
WHEN 'WHITE' THEN 'Wh'
WHEN 'SILVER' THEN 'Sl'
ELSE 'NA'
END CODE
FROM DimProduct

SELECT ProductKey,EnglishProductName,ListPrice,
CASE 
WHEN ListPrice>=3000 THEN 'High'
WHEN ListPrice>=2000 THEN 'Avg'
ELSE 'Low'
END CODE
FROM DimProduct

