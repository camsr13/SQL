--Retrieve RobberId, Nickname and individual total “earnings” of those robbers who have
--earned more than $40,000 by robbing banks. The answer should be sorted in decreasing
--order of the total earnings. 


SELECT x.robberid as robber_id,
r.nickname as nickname,
x.earnings as individual_earnings
from (SELECT * FROM 
(SELECT robberid,
SUM(share) as earnings 
from accomplices 
GROUP BY robberid) 
as robbery_earnings
WHERE earnings > 40000) as x
join Robbers r
on x.robberid = r.robberid
ORDER BY individual_earnings DESC;
