--Team Coach insert test case
--1. Individual is a coach and not a coach of any team
INSERT INTO dbo.IndividualRoles VALUES  ( 1,2 )
INSERT INTO dbo.TeamCoaches VALUES  ( 1, 1 )
SELECT * FROM dbo.TeamCoaches
--Result: Pass

--2. Individual is a coach and assigned to a team
INSERT INTO dbo.TeamCoaches VALUES  ( 1, 1 )
--Result: Pass

--3. Individual is not an assigned coach
INSERT INTO dbo.TeamCoaches VALUES  ( 2, 1 )
--Result: Pass

