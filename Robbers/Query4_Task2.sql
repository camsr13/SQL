--Retrieve RobberId, Nickname, Age, and all skill descriptions of all robbers who are


SELECT r.robberid as robber_id,
r.nickname as nickname,
r.age as individual_earnings
FROM (SELECT * FROM 
(SELECT robberid,
SUM(share) as earnings 
FROM accomplices 
GROUP BY robberid) 
as robbery_earnings
WHERE earnings > 40000) as i
JOIN Robbers r
ON i.robberid = r.robberid
ORDER BY individual_earnings DESC;