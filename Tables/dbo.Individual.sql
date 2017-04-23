CREATE TABLE [dbo].[Individual]
(
[IndividualID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[LastName] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[DateofBirth] [date] NULL,
[Major] [varchar] (15) COLLATE Latin1_General_CI_AI NULL,
[TeamID] [int] NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[tr_LoginCreate]
ON [dbo].[Individual]
FOR INSERT
AS
BEGIN
	DECLARE @IndividualID VARCHAR(20), @FirstName VARCHAR(20), @LastName VARCHAR(20)
	SELECT @FirstName = FirstName, @LastName = LastName, @IndividualID = IndividualID FROM Inserted

	INSERT INTO dbo.IndividualLogin
	--VALUES  ((@IndividualID + SUBSTRING(@FirstName,1,1) + SUBSTRING(@LastName,1,5)), 'temp999', @IndividualID, GETDATE())
	--Or a random password as below. Not sure which one to use.
	--	VALUES  ((@IndividualID + SUBSTRING(@FirstName,1,1) + SUBSTRING(@LastName,1,5)), SUBSTRING(CAST(NEWID() AS VARCHAR(50)),1,8), @IndividualID, GETDATE())
	--OR
	VALUES  ((@IndividualID + SUBSTRING(@FirstName,1,1) + SUBSTRING(@LastName,1,5)), (SUBSTRING(CAST(NEWID() AS VARCHAR(50)),1,3) + LOWER(SUBSTRING(CAST(NEWID() AS VARCHAR(50)),1,3)) + SUBSTRING(CAST(NEWID() AS VARCHAR(50)),1,4)), @IndividualID, GETDATE())
END 

GO
ALTER TABLE [dbo].[Individual] ADD CONSTRAINT [pk_IndividualID] PRIMARY KEY CLUSTERED  ([IndividualID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Individual] ADD CONSTRAINT [fk_Individual_Teams] FOREIGN KEY ([TeamID]) REFERENCES [dbo].[Teams] ([TeamID])
GO
GRANT UPDATE ON  [dbo].[Individual] TO [dbrole_Player]
GO
