# Write your MySQL query statement below

SELECT
    ID AS id
    , SUM(NUM) AS num
FROM
(
    (SELECT REQUESTER_ID AS ID, COUNT(REQUESTER_ID) AS NUM FROM RequestAccepted GROUP BY REQUESTER_ID)
        UNION ALL
    (SELECT ACCEPTER_ID AS ID, COUNT(ACCEPTER_ID) AS NUM FROM RequestAccepted GROUP BY ACCEPTER_ID)
) A
GROUP BY ID
ORDER BY num DESC LIMIT 1