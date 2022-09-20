--Retrieve BankName, City and Date of all robberies in the city that observes the highest
--Share among all robberies.


Create VIEW biggest_share as(
select bankname, city, share
from accomplices
order by share desc
LIMIT 1);

select robberies.bankname, robberies.city, robberies.DateRobbed
from robberies
join biggest_share
on robberies.city = biggest_share.city;



