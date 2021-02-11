SELECT a.sale_date, (a.sold_num - b.sold_num) AS diff
FROM (SELECT * FROM Sales WHERE fruit = "apples") a INNER JOIN 
(SELECT * FROM Sales WHERE fruit = "oranges") b ON a.sale_date = b.sale_date
ORDER BY 1
