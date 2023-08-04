# Write your MySQL query statement below

SELECT DISTINCT(P1.EMAIL) AS Email FROM PERSON AS P1 INNER JOIN PERSON AS P2 ON P1.EMAIL = P2.EMAIL
WHERE P1.EMAIL = P2.EMAIL AND P1.ID != P2.ID