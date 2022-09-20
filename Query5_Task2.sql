--Retrieve RobberId and Nickname of all robbers who never robbed the banks at which
--they have an account.

Create VIEW robbed_self as(
select accomplices.RobberId, accomplices.bankname
from accomplices
join HasAccounts
on HasAccounts.bankname = accomplices.bankname and HasAccounts.city = accomplices.city and accomplices.RobberId = HasAccounts.RobberId);

Create VIEW didnt_rob as(
SELECT robbers.RobberId, robbers.NickName 
FROM robbers
WHERE NOT EXISTS 
    (SELECT * 
     FROM robbed_self 
     WHERE robbers.RobberId = robbed_self.RobberId)
);

select * from didnt_rob;