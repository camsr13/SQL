--Retrieve BankName and city of all banks where Al Capone has an account.

select distinct bankname, city
from hasaccounts 
where robberid = 
(select robberid 
from robbers 
where nickname = 'Al Capone');