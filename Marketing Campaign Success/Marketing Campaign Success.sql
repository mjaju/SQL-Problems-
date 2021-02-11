WITH user_count AS   -- CTE
(select m.user_id from 
marketing_campaign m INNER JOIN marketing_campaign n 
on m.user_id = n.user_id AND 
m.product_id != n.product_id AND
m.created_at != n.created_at
GROUP BY m.user_id
HAVING COUNT(m.user_id) > 1)

SELECT COUNT(*) FROM user_count; 
