CREATE TABLE [dim].[Destination]
(
	[Id] SMALLINT NOT NULL IDENTITY, 
    [Destination] VARCHAR(64) NULL, 
    CONSTRAINT [PK_Destination] PRIMARY KEY ([Id]) 
)
