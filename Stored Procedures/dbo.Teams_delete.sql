SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[Teams_delete]
@teamID int
as 
begin
set NOCOUNT ON
delete from dbo.Teams
where  TeamID = @teamID 
end
GO
