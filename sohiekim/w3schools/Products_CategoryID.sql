-- Products에 CategoryID가 5,6를 표시, 내용?
SELECT Products.ProductName, Supplier.SupplierName
FROM Products INNER JOIN Supplier
ON Products.SupplierID = Supplier.SupplierID
AND Products.CategoryID IN (5,6)
;    