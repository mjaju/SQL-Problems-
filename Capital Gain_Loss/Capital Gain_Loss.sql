# Write your MySQL query statement below

SELECT a.stock_name, (SUM(b.price) - SUM(a.price)) AS capital_gain_loss FROM -- creating subquery to separate buy and sell records
(SELECT stock_name, SUM(price) AS price FROM Stocks 
 WHERE operation = "buy" GROUP BY stock_name ) a INNER JOIN
(SELECT stock_name, SUM(price) AS price FROM Stocks 
 WHERE operation = "sell" GROUP BY stock_name) b 
ON a.stock_name = b.stock_name
GROUP BY 1
