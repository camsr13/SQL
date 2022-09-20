--Retrieve BankName and City of all banks that were not robbed in the year, in which
--there were robbery plans for that bank

Create VIEW robbery_years as(
SELECT SUBSTRING(DateRobbed, 1, 4) AS ExtractString, BankName, City
FROM Robberies);


Create VIEW plan_years as(
SELECT SUBSTRING(PlannedDate, 1, 4) AS ExtractString, BankName, City
FROM Plans);

Select distinct plan_years.BankName , plan_years.City
from plan_years
left outer join robbery_years 
on plan_years.City = robbery_years.City and plan_years.BankName = robbery_years.BankName
where robbery_years.City is null and robbery_years.BankName is null;