--Retrieve BankName and City of all banks that were robbed by all robbers.

Create VIEW distinct_accomplicies as(
Select distinct RobberId, BankName, City
from accomplices);


SELECT count(*), BankName, City
FROM distinct_accomplicies
GROUP BY BankName, City
HAVING COUNT(*) = 
(SELECT COUNT(RobberId)
FROM robbers);




