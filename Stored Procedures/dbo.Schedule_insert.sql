SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Schedule_insert]
@opponentID VARCHAR(40),
@TypeID CHAR(1),
@matchdate DATETIME
AS 
BEGIN
SET NOCOUNT ON
INSERT INTO dbo.schedules (OpponentTeam ,TypeID  , MatchDate )
VALUES (@opponentid ,@TypeID  , @matchdate )
END
GO
