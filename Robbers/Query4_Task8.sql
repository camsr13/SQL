--Retrieve the Description of all skills together with RobberId and NickName of all
--robbers who possess this skill. The answer should be ordered by skill description. 

SELECT skills.description as description,
r.robberid as robberid,
r.nickname as nickname
FROM (select skills.description as description,
hasskills.robberid as robber_id
from hasskills 
join skills 
ON hasskills.skillid = skills.skillid
ORDER BY description) as skills 
JOIN Robbers r
ON r.robberid = skills.robber_id;