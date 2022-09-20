SELECT security as security_level, 
COUNT(security) as total_number_of_robberies,
AVG(amount) as average_amount_stolen
FROM (SELECT b.bankname as bankname,
b.city as city,
b.security as security,
r.amount as amount
FROM Banks b 
JOIN Robberies r 
ON b.bankname = r.bankname 
AND b.city = r.city
ORDER BY b.security) as robberiesGroupedBySecurity
GROUP BY security
ORDER BY total_number_of_robberies DESC;
