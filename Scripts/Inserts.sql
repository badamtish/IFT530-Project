USE [IFT530]
GO

INSERT INTO [dbo].[Teams] ([Name]) 
	VALUES 
		('Poly Soccer'),
		('Tempe Soccer'),
		('Arizona Soccer')
GO

INSERT INTO [dbo].[Individual] ([FirstName],[LastName] ,[DateofBirth] ,[Major] ,[TeamID])
     VALUES
           ('Nischal', 'Kumar', '07-01-1991', 'IT', 1),
		   ('Rasika', 'Chafekar', '07-01-1991', 'IT', 1),
		   ('Oladoja', 'Abiose', '07-01-1991', 'IT', 1),
		   ('Deepali', 'Mokashi', '07-01-1991', 'IT', 1),
		   ('David', 'Beckham', '08-23-1985', 'IT', 1),
		   ('David', 'Copperfied', '08-23-1985', 'IT', 1),
		   ('Christiano', 'Ronaldo', '08-23-1985', 'IT', 1),
   		   ('Lionel', 'Messi', '08-23-1985', 'IT', 1),
		   ('Neymar','Jr','08-23-1985', 'IT', 1),
		   ('Zaltan','Ibrahim','08-23-1985', 'IT', 1),
		   ('Luis','Suarez','08-23-1985', 'IT', 1),
		   ('Gareth','Bale','08-23-1985', 'IT', 1),
		   ('Luis','Suarez','08-23-1985', 'IT', 1),
		   ('Alexis','Sanchez','08-23-1985', 'IT', 1),
		   ('Luka','Modric','08-23-1985', 'IT', 1),
		   ('Wayne','Rooney','08-23-1985', 'IT', 1),
	       ('Luka','Modric','08-23-1985', 'IT', 1),





GO

INSERT INTO dbo.Roles ( Title )
VALUES  
	('Player'),
	('Coach'),
	('SupportStaff'),
	('Manager')
GO

INSERT INTO dbo.InventoryList
        ( ItemName, Stock, TotalCount )
VALUES  
	('Gloves', 100, 100),
	('Shoes', 100, 100),
	('Caps', 100, 100),
	('Towels', 100, 100),
	('Balls', 100, 100),

		   
