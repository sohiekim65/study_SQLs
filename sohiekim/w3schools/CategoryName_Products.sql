-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계는 ?
-- 결과 : 390.34
SELECT SUM(Price)
FROM Products
WHERE CategoryID IN(SELECT CategoryID
				FROM Categories
       			WHERE CategoryName IN('Dairy Products', 'Seafood'))
AND Price BETWEEN 10 AND 50;

-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 평균은 ?
-- 결과 : 24.396250
SELECT AVG(Price)
FROM Products
WHERE CategoryID IN(SELECT CategoryID
				FROM Categories
       			WHERE CategoryName IN('Dairy Products', 'Seafood'))
AND Price BETWEEN 10 AND 50;