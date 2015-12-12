CREATE TABLE [dim].[Vessel]
(
	[Id] INT NOT NULL IDENTITY, 
    [MMSI] CHAR(9) NOT NULL, 
    [ShipTypeId] SMALLINT NOT NULL, 
	[VesselSizeProfileId] SMALLINT NOT NULL, 
    CONSTRAINT [PK_Vessel] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Vessel_ShipType] FOREIGN KEY ([ShipTypeId]) REFERENCES [dim].[ShipType]([Id]) ,
	CONSTRAINT [FK_Vessel_VesselSizeProfile] FOREIGN KEY ([VesselSizeProfileId]) REFERENCES [dim].[VesselSizeProfile]([Id]) 
)

GO


CREATE INDEX [IX_Vessel_ShipTypeId] ON [dim].[Vessel] ([ShipTypeId])
GO

CREATE INDEX [IX_Vessel_VesselSizeProfileId] ON [dim].[Vessel] ([VesselSizeProfileId])
