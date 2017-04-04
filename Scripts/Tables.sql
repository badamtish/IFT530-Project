USE IFT530;
GO
CREATE TABLE Teams(
	TeamID INT IDENTITY(1,1) CONSTRAINT pk_TeamID PRIMARY KEY,
	Name VARCHAR(20)
)

CREATE TABLE Individual (
	IndividualID INT IDENTITY(1,1) CONSTRAINT pk_IndividualID PRIMARY KEY,
	FirstName VARCHAR(20),
	LastName VARCHAR(20),
	DateofBirth DATE,
	Major VARCHAR(15),
	TeamID INT CONSTRAINT fk_Individual_Teams FOREIGN KEY  REFERENCES dbo.Teams(TeamID)
)

CREATE TABLE Roles(
	RoleID INT IDENTITY(1,1) CONSTRAINT pk_RoleID PRIMARY KEY,
	Title VARCHAR(20)
)

CREATE TABLE IndividualRoles(
	IndividualID INT CONSTRAINT fk_InvididualRoles_Individual FOREIGN KEY REFERENCES dbo.Individual(IndividualID),
	RoleID INT CONSTRAINT fk_IndividualRoles_Roles FOREIGN KEY REFERENCES dbo.Roles(RoleID)
)

CREATE TABLE MatchType(
	TypeID CHAR(1) CONSTRAINT pk_TypeID PRIMARY KEY CONSTRAINT ck_TypeID CHECK (TypeID = 'T' OR TypeID = 'M'),
	MatchType VARCHAR(15),
)

CREATE TABLE Schedules(
	MatchID INT IDENTITY(1,1) CONSTRAINT pk_MatchID PRIMARY KEY,
	OpponentTeamID INT CONSTRAINT fk_Schedules_Teams FOREIGN KEY REFERENCES Teams(TeamID),
	MatchType CHAR(1) CONSTRAINT fk_Schedules_MatchType FOREIGN KEY REFERENCES dbo.MatchType(TypeID),
	MatchDate DATETIME
)	

CREATE TABLE IndividualAvailability(
	IndividualID INT CONSTRAINT fk_IndividualAvailability_Individual FOREIGN KEY REFERENCES dbo.Individual(IndividualID),
	DateUnavailable DATE,
	Reason VARCHAR(2000)
)

CREATE TABLE Stats(
	IndividualID INT CONSTRAINT fk_Stats_Individual FOREIGN KEY REFERENCES dbo.Individual(IndividualID),
	Goals INT,
	NumberofTrainings INT,
	Assists INT,
	Saves INT
)

CREATE TABLE Training(
	IndividualID INT CONSTRAINT fk_Training_Individual FOREIGN KEY REFERENCES dbo.Individual(IndividualID),
	MatchID INT CONSTRAINT fk_Training_Schedules FOREIGN KEY REFERENCES dbo.Schedules(MatchID)
)


