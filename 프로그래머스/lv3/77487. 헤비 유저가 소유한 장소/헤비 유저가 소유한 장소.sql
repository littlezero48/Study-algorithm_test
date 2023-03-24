-- 코드를 입력하세요
SELECT A.*
FROM PLACES AS A 
INNER JOIN
    (SELECT HOST_ID, 
     COUNT(*) AS CNT 
     FROM PLACES 
     GROUP BY HOST_ID 
     HAVING CNT >= 2) AS B
ON A.HOST_ID = B.HOST_ID
ORDER BY ID ASC;