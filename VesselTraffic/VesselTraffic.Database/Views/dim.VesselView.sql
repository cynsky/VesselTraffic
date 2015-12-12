CREATE VIEW [dim].[VesselView]
AS

SELECT	V.Id
		, V.MMSI
		, ST.ShipType
		, ST.ShipTypeDetail
		, S.VesselDimension

FROM	dim.Vessel AS V
		INNER JOIN
		dim.ShipType AS ST ON
			(V.ShipTypeId = ST.Id)
		INNER JOIN
		dim.VesselSizeProfile AS S ON
			(V.VesselSizeProfileId = s.Id)

WHERE	V.Id IS NOT NULL