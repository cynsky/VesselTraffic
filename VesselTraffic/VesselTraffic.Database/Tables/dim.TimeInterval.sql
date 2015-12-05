CREATE TABLE [dim].[TimeInterval]
(
	[Id] SMALLINT NOT NULL IDENTITY, 
    [TimeKey] TIME(0) NOT NULL, 
    [HourInterval] CHAR(2) NOT NULL, 
    [MinuteInterval] CHAR(2) NOT NULL, 
    CONSTRAINT [PK_TimeInterval] PRIMARY KEY ([Id]) 
)
