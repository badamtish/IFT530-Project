SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_Schedule_delete]
@matchID Int
as 
begin
set NOCOUNT on
DELETE FROM dbo.Schedules 
WHERE MatchID = @matchID
end

GO
GRANT EXECUTE ON  [dbo].[sp_Schedule_delete] TO [dbrole_Coach]
GO
