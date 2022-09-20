CREATE VIEW robberies_for_each_robber as (
select robberid, 
COUNT(robberid) as total_robberies,
SUM(share) as total_earnings
from accomplices
GROUP BY robberid);

CREATE VIEW average_robberies as (
SELECT AVG (total_robberies) as average_robberies
FROM robberies_for_each_robber);

CREATE VIEW active_robbers as (
select * from robberies_for_each_robber 
WHERE total_robberies > 
(select average_robberies 
from average_robberies));

CREATE VIEW nicknames as (
select nickname
from active_robbers a 
JOIN robbers r
ON r.robberid = a.robberid
WHERE r.noyears = 0
ORDER BY total_earnings DESC);

select * from nicknames;

