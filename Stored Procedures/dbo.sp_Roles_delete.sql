SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_Roles_delete]
@roleid Int
as 
begin
set NOCOUNT ON
delete from dbo.Roles
where RoleID = @roleid
end
GO
