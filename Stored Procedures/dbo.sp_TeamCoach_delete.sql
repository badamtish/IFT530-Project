SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_TeamCoach_delete]
@individualid Int
as 
begin
set NOCOUNT ON
delete from dbo.TeamCoach
where IndividualID = @individualid
end
GO
