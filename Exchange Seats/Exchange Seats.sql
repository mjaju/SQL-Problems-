# Write your MySQL query statement below

SELECT CASE 
WHEN Id = (SELECT (MAX(Id))FROM seat)AND Id %2 != 0 THEN Id
WHEN Id %2 = 0 THEN Id -1 ELSE Id + 1 END AS Id, 
student
FROM seat
ORDER BY Id
