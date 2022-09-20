--Retrieve RobberId, Nickname and the Number of Years not spent in prison for all
--robbers who spent more than half of their life in prison.

select Robberid,NickName,(Age - NoYears) as Years_Out_Prison
from Robbers 
where NoYears > Age / 2;