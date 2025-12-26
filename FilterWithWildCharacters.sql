/* 
LIKE

%-ANY number of unknown character
_-underscore means one unknown character
*/

SELECT * FROM DimProduct
WHERE EnglishProductName LIKE 'A%'

SELECT * FROM DimProduct
WHERE EnglishProductName LIKE '%CE'

SELECT * FROM DimProduct
WHERE EnglishProductName LIKE '%A%'

SELECT * FROM DimProduct
WHERE EnglishProductName LIKE 'A_C%'