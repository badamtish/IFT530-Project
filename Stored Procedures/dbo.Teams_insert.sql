SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[Teams_insert]
@teamID int,
@name varchar(20)
as begin
set NOCOUNT on
insert into dbo.Teams  (TeamID,Name ) 
values (@teamID,@name)
end 
GO
