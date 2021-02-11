# Write your MySQL query statement below

SELECT gender, day, 
SUM(score_points) over(PARTITION BY  gender ORDER BY day)total  --Grouping the scores by gender
FROM Scores
GROUP BY gender, day
ORDER BY gender, day
