
SELECT dest, sum(distance) AS TOTAL_DISTANCE from flights GROUP BY dest order by TOTAL_DISTANCE desc;
