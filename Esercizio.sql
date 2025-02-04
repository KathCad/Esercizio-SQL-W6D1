SHOW DATABASES;
-- SELECT * FROM dimproduct;
SELECT ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag
FROM dimproduct;
SELECT ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag
FROM dimproduct WHERE FinishedGoodsFlag = 1;
SELECT ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice
FROM dimproduct WHERE ProductAlternateKey LIKE 'FR%' OR ProductAlternateKey LIKE 'BK%';
SELECT ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice, ListPrice - StandardCost AS Markup
FROM dimproduct WHERE ProductAlternateKey LIKE 'FR%' OR ProductAlternateKey LIKE 'BK%';
SELECT ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice, FinishedGoodsFlag
FROM dimproduct WHERE FinishedGoodsFlag = 1 AND ListPrice BETWEEN 1000 AND 2000;

SELECT * FROM dimemployee;
SELECT * FROM dimemployee WHERE SalesPersonFlag = 1;

SELECT * FROM factresellersales;
SELECT SalesOrderNumber, SalesOrderLineNumber, OrderDate, ProductKey, UnitPrice, TotalProductCost, SalesAmount, SalesAmount - TotalProductCost as Profit 
FROM factresellersales WHERE OrderDate >= '2020-01-01' AND ProductKey IN (597, 598, 477, 214);

