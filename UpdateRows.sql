SELECT * INTO DIMProductBKUP FROM DimProduct

SELECT * FROM DIMProductBKUP

UPDATE DIMProductBKUP SET Color='No Color'
WHERE Color='NA'

UPDATE DIMProductBKUP SET ListPrice=ListPrice*1.1