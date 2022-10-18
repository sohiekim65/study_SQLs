-- Categories별로 구성된 제품 갯수 각각 표시하세요
SELECT CategoryID, COUNT(ProductName)
FROM Products
GROUP BY CategoryID