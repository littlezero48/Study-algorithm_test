-- 코드를 입력하세요

SELECT DISTINCT M.CART_ID
FROM (SELECT CART_ID
        FROM CART_PRODUCTS 
        WHERE NAME = 'Milk') AS M
INNER JOIN (SELECT CART_ID
        FROM CART_PRODUCTS 
        WHERE NAME = 'Yogurt') AS Y
ON M.CART_ID = Y.CART_ID
ORDER BY M.CART_ID ASC