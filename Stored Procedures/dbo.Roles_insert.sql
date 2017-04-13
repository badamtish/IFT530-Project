SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[Roles_insert]
@roleid Int,
@title varchar(20)
as begin
set NOCOUNT on
insert into dbo.Roles  (RoleID, Title ) 
values (@roleid , @title)
end 
GO
