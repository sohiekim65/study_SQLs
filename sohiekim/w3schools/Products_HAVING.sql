-- 카테고리에 제품이 10개 이상인 카테고리 표시
SELECT CategoryID, COUNT(*)
FROM Products
GROUP BY CategoryID
HAVING COUNT(CategoryID) >= 10;