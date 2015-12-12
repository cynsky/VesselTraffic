CREATE TABLE [dim].[VesselSizeProfile]
(
	[Id] SMALLINT NOT NULL IDENTITY, 
    [VesselDimension] VARCHAR(32) NOT NULL, 
    [VesselLength] SMALLINT NOT NULL, 
    [VesselWidth] SMALLINT NOT NULL, 
    CONSTRAINT [PK_VesselSizeProfile] PRIMARY KEY ([Id]) 
)
