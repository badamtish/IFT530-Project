SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sp_Performance_insert]
@individualID Int,
@coachID int,
@comments varchar(500),
@ratings decimal
as 
begin
set NOCOUNT on
insert into dbo.performance (IndividualID, CoachID, Comments,Ratings )
values (@individualID , @coachID , @comments,@ratings )
end
GO
