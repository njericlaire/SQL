--COMPARISON OPERATORS
--=
--<>
--<
-->
--<=
-->=

SELECT * FROM DimProduct
WHERE ListPrice=48.0673

SELECT * FROM DimProduct
WHERE Color='RED'

SELECT * FROM DimProduct
WHERE Color='RED' OR Color='SILVER'

SELECT * FROM DimProduct
WHERE Color='RED' AND Color='SILVER'

SELECT * FROM DimProduct
WHERE Color IN('RED','SILVER')

SELECT * FROM DimProduct
WHERE Color='RED' AND ListPrice>1000

SELECT * FROM DimProduct
WHERE Color='RED' OR ListPrice>1000

SELECT * FROM DimProduct
WHERE Color IN('RED','SILVER') AND ListPrice>1000

SELECT * FROM DimProduct
WHERE ListPrice>=1000 AND ListPrice<=2000

SELECT * FROM DimProduct
WHERE  ListPrice BETWEEN 1000 AND 2000

SELECT * FROM DimProduct
WHERE ListPrice>=1000 OR ListPrice<=2000

