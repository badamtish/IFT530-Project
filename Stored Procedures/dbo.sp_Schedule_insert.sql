SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_Schedule_insert]
@matchID Int,
@opponent VARCHAR(50),
@typeID char(1),
@matchdate datetime
as 
begin
set NOCOUNT on
insert into dbo.schedules (MatchID ,OpponentTeam ,TypeID , MatchDate )
values (@matchid ,@opponent ,@typeID , @matchdate )
end
GO
