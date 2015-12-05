USE VesselTraffic;
GO

DECLARE @CurrentDate datetime = '12/5/2015';

WITH RowGenerator AS
(
	SELECT	@CurrentDate AS DateKey

	FROM	sys.all_objects
),
TimeKeys
AS
(
SELECT	ROW_NUMBER() OVER(ORDER BY DateKey) AS RowKey
		, CONVERT(time(0), DateKey) AS TimeKey

FROM	RowGenerator

),
TimeKeys2
AS
(
	SELECT	DATEADD(MINUTE, RowKey * 10, TimeKey) AS TimeKey

	FROM	TimeKeys
)

INSERT INTO dim.TimeInterval(TimeKey, HourInterval, MinuteInterval)

SELECT	DISTINCT
		TimeKey
		, RIGHT('0'+ CONVERT(VARCHAR(2), DATEPART(HOUR, TimeKey)), 2) AS HourInterval
		, RIGHT('0'+ CONVERT(VARCHAR(2), DATEPART(MINUTE, TimeKey)), 2) AS MinuteInterval

FROM	TimeKeys2

EXCEPT

SELECT	TimeKey
		, HourInterval
		, MinuteInterval

FROM	dim.TimeInterval

ORDER BY	TimeKey
			, HourInterval
			, MinuteInterval