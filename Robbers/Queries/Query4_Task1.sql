--Select all banks that have not been robbed


SELECT Banks.BankName, Banks.City
FROM Banks
left outer join Robberies
on Robberies.City = Banks.City and Banks.BankName = Robberies.BankName
WHERE Robberies.City IS NULL and Robberies.bankname IS NULL; 
