--getting inbtwn records use OFFSET

SELECT * FROM DimProduct
ORDER BY ProductKey
OFFSET 10 ROWS--skipp the first 10 rows

SELECT * FROM DimProduct
ORDER BY ProductKey
OFFSET 10 ROWS
FETCH FIRST 10 ROWS ONLY
