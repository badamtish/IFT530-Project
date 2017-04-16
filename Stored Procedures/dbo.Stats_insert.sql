SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[Stats_insert]
@individualid Int,
@goals int,
@notraining int,
@assists INT,
@saves int
as begin
set NOCOUNT on
insert into dbo.Stats  (IndividualID,Goals,NumberofTrainings,Assists,Saves ) 
values (@individualid, @goals, @notraining, @assists ,@saves)
end 
GO
