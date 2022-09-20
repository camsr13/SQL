--Retrieve RobberId, NickName, and the Number of Years in prison for all robbers who
--were in prison for more than ten years. 

SELECT Robberid,NickName,NoYears
FROM Robbers 
WHERE NoYears > 10;