-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계, 평균은 ?
-- 합계 결과 : 390.34   평균 결과 : 24.396250
SELECT SUM(Price), AVG(Price)
FROM Products
WHERE CategoryID IN(SELECT CategoryID
				FROM Categories
       			WHERE CategoryName IN('Dairy Products', 'Seafood'))
AND Price BETWEEN 10 AND 50;