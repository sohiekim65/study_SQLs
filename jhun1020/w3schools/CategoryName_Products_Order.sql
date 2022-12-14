-- + 7 : CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는 ? 
SELECT  COUNT(*)		-- 총 개수 = 482
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID
			        FROM Products
			        WHERE CategoryID IN(SELECT CategoryID
							            FROM Categories
							            WHERE CategoryName IN ('Dairy Products', 'Seafood') )
			        AND Price BETWEEN 10 AND 50);


SELECT  OrderID		-- OrderID 내역S 
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID
			        FROM Products
			        WHERE CategoryID IN(SELECT CategoryID
							            FROM Categories
							            WHERE CategoryName IN ('Dairy Products', 'Seafood') )
			        AND Price BETWEEN 10 AND 50);