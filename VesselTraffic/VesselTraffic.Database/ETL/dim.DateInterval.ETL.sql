--DECLARE @DateKeyStart date = '1/1/2010';

--WITH RowGenerator AS
--(
--	SELECT	CONVERT(date,'1/1/2010') AS DateKey

--	FROM	sys.all_objects

--	UNION ALL

--	SELECT	@DateKeyStart AS DateKey

--	FROM	sys.all_objects
--),
--DateKeys
--AS
--(
--SELECT	ROW_NUMBER() OVER(ORDER BY DateKey) AS RowKey
--		, DateKey 

--FROM	RowGenerator

--),
--DateGenerator
--AS
--(
--	SELECT	DATEADD(DAY,RowKey,DateKey) AS DateKey


--	FROM DateKeys
--)

--INSERT INTO dim.DateInterval
--(
--		DateKey
--		, CalendarYear
--		, CalendarQuarter
--		, CalendarMonth
--		, CalendarDay
--		, CalendarMonthName
--		, CalendarDayName
--		, ISOWeek
--)

--SELECT	DateKey
--		, CONVERT(char(4), YEAR(DateKey)) AS CalendarYear
--		, CONVERT(char(4), 'Q ' + RIGHT('0'+ CONVERT(VARCHAR(2), DATEPART(QUARTER, DateKey)), 2)) AS CalendarQuarter
--		, CONVERT(char(2), RIGHT('0'+ CONVERT(VARCHAR(2), DATEPART(MONTH, DateKey)), 2)) AS CalendarMonth
--		, CONVERT(char(2), RIGHT('0'+ CONVERT(VARCHAR(2), DATEPART(DAY, DateKey)), 2)) AS CalendarDay

--		, DATENAME(MONTH, DateKey) AS CalendarMonthName
--		, DATENAME(WEEKDAY, DateKey) AS CalendarDayName

--		, RIGHT('0'+ CONVERT(VARCHAR(2), DATENAME(ISO_WEEK, DateKey)), 2) AS ISOWeek


--FROM	DateGenerator

--WHERE	YEAR(DateKey) < 2016

--EXCEPT

--SELECT	DateKey
--		, CalendarYear
--		, CalendarQuarter
--		, CalendarMonth
--		, CalendarDay
--		, CalendarMonthName
--		, CalendarDayName
--		, ISOWeek

--FROM	dim.DateInterval

--GO