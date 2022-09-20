--Retrieve RobberId, Nickname, and Description of the first preferred skill of all robbers
--who have two or more skills.

CREATE VIEW multi_skilled as(
    SELECT count(*), RobberId
    FROM HasSkills
    GROUP BY RobberId
    HAVING COUNT(*) > 1
);

Create VIEW best_skill as(
SELECT HasSkills.RobberID, HasSkills.SkillId
FROM HasSkills
JOIN multi_skilled
on HasSkills.RobberId = multi_skilled.RobberId 
where HasSkills.Preference = 1);

Create VIEW skill_desc as(
SELECT best_skill.RobberID, Skills.Description
FROM best_skill
JOIN skills
on best_skill.SkillId = skills.SkillId );

SELECT skill_desc.RobberId, robbers.Nickname, skill_desc.Description
FROM skill_desc
JOIN robbers
on robbers.RobberId= skill_desc.RobberId 


