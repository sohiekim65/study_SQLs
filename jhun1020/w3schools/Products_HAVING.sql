-- +1 : Products가 카테고리 별로 10 이상인 제품이 무엇인지 확인

SELECT COUNT(*), CategoryID
FROM Products
GROUP BY CategoryID
HAVING COUNT(*)>=10