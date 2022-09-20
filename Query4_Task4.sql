--Retrieve BankName and City and NoAccounts of all banks that have no branch in
--Chicago. The answer should be sorted in increasing order of the number of accounts. 

SELECT bankname,city,noaccounts
FROM Banks 
where bankname NOT IN (
SELECT bankname
from Banks 
where city = 'Chicago')
ORDER BY noaccounts; 