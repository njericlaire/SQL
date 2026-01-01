SELECT ProductKey,EnglishProductName,Color,ListPrice,
IIF(Color='red' and ListPrice>=3000,'rd-3k',
IIF(Color='red' and ListPrice>=2000,'rd-2k',
IIF(Color='red','rd-<2k',
IIF(Color='silver' and ListPrice>=3000,'sl-3k',
IIF(Color='silver' and ListPrice>=2000,'sl-2k',
IIF(Color='silver','sl-<2k','NA'))))))
FROM DimProduct

SELECT ProductKey,EnglishProductName,Color,ListPrice,
CASE
WHEN Color='RED' AND ListPrice>=3000 THEN 'rd-3k'
WHEN Color='RED' AND ListPrice>=2000 THEN 'rd-2k'
WHEN Color='RED' AND ListPrice<2000 THEN 'rd<-2k'
WHEN Color='SILVER' AND ListPrice>=3000 THEN 'SL-3k'
WHEN Color='SILVER' AND ListPrice>=2000 THEN 'SL-2k'
WHEN Color='SILVER' AND ListPrice<2000 THEN 'SL<-2k'
ELSE 'NA'
END
FROM DimProduct