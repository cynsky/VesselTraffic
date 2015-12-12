CREATE TABLE [dim].[ShipType]
(
	[Id] SMALLINT NOT NULL, 
    [ShipType] VARCHAR(32) NOT NULL, 
    [ShipTypeDetail] VARCHAR(128) NOT NULL, 
    CONSTRAINT [PK_VesselType] PRIMARY KEY ([Id]) 
)
