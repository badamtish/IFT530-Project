SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_Schedule_insert]
@matchID Int,
@opponentID int,
@matchtype char(1),
@matchdate datetime
as 
begin
set NOCOUNT on
insert into dbo.schedules (MatchID ,OpponentTeamID ,MatchType , MatchDate )
values (@matchid ,@opponentid ,@matchtype , @matchdate )
end
GO
