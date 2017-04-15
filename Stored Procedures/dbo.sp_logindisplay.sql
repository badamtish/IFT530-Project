SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[sp_logindisplay]
AS
SELECT username,userpass
FROM dbo.IndividualLogin; 
GO
