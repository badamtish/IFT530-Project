SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_TeamCoach_insert]
@individualid Int,
@teamID int
as begin
set NOCOUNT on
insert into dbo.TeamCoaches
        ( IndividualID, TeamID )
values (@individualid, @teamID)
end 
GO
