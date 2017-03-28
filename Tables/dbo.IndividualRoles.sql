CREATE TABLE [dbo].[IndividualRoles]
(
[IndividualID] [int] NULL,
[RoleID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IndividualRoles] ADD CONSTRAINT [fk_IndividualRoles_Roles] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[IndividualRoles] ADD CONSTRAINT [fk_InvididualRoles_Individual] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
