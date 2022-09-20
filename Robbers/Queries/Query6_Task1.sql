select nickname
from 
(select * 
from (select robberid, 
COUNT(robberid) as total_robberies,
SUM(share) as total_earnings
from accomplices
GROUP BY robberid) as robberies_for_each_robber
WHERE total_robberies > (SELECT AVG (total_robberies) 
FROM (select robberid, 
COUNT(robberid) as total_robberies,
SUM(share) as total_earnings
from accomplices
GROUP BY robberid) as robberies_for_each_robber)) as active_robbers
JOIN robbers 
ON robbers.robberid = active_robbers.robberid
WHERE robbers.noyears = 0
ORDER BY total_earnings DESC;