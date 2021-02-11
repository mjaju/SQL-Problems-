SELECT SENT.date, 
COUNT(ACCEPTED.action)*1.0/COUNT(SENT.action) AS percentage_acceptance
FROM (SELECT * FROM fb_friend_requests WHERE action = 'sent') AS SENT 
LEFT JOIN (SELECT * FROM fb_friend_requests WHERE action = 'accepted') AS ACCEPTED 
ON SENT.user_id_sender = ACCEPTED.user_id_sender AND SENT.user_id_receiver = ACCEPTED.user_id_receiver
GROUP BY SENT.date
ORDER BY SENT.date;
