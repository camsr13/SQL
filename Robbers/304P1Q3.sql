---------------
--*** Q1 ***---
---------------

INSERT INTO Skills VALUES (21,'Driving');
--Should Fail, Description not unique
---------------
--*** Q2 ***---
---------------

INSERT INTO Banks (BankName,City,NoAccounts,Security)
Values ('Loanshark Bank','Evanston',100,'very good');
--Failing Correctly, Primary Key Constraint

INSERT INTO Banks (BankName,City,NoAccounts,Security)
Values ('EasyLoan Bank','Evanston',-5,'excellent');
--Failing Correctly, Negative Account Contraint

INSERT INTO Banks (BankName,City,NoAccounts,Security)
Values ('EasyLoan Bank','Evanston',100,'poor');
--Not yet Failing

---------------
--*** Q3 ***---
---------------

INSERT INTO Robberies VALUES ('NXP Bank','Chicago','2019-01-08',1000);
--Failing Correctly, Primary Key already exists

---------------
--*** Q4 ***---
---------------

DELETE FROM Skills
WHERE SkillId = 1
AND Description = 'Driving';

---------------
--*** Q5 ***---
---------------

DELETE FROM Banks 
WHERE BankName = 'PickPocket Bank'
AND City = 'Evanston'
AND NoAccounts = 2000
AND Security = 'very good';
--Failing Correctly, still refrenced from accomplices

---------------
--*** Q6 ***---
---------------


DELETE FROM Banks 
WHERE BankName = 'Loanshark Bank'
AND City = 'Chicago';


---------------
--*** Q7 ***---
---------------

INSERT INTO Robbers VALUES (1,'Shotgun',70,0);
--Failing Correctly, Robber Id = 1 already exists

INSERT INTO Robbers VALUES (333,'Jail Mouse', 25, 35);
--Failing Correctly, PrisonTime < Age Constraint

---------------
--*** Q8 ***---
---------------

INSERT INTO HasSkills VALUES (1, 7, 1, 'A+');
--

INSERT INTO HasSkills VALUES (1, 2, 0, 'A');

INSERT INTO HasSkills VALUES (333, 1, 1, 'B-');
--Failing Correctly, no robber with ID = 333

INSERT INTO HasSkills VALUES (3, 20, 3, 'B+');



---------------
--*** Q9 ***---
---------------
