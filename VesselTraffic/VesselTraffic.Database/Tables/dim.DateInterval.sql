CREATE TABLE [dim].[DateInterval]
(
	[Id] SMALLINT NOT NULL IDENTITY, 
    [DateKey] DATE NOT NULL, 
    [CalendarYear] CHAR(4) NOT NULL, 
    [CalendarQuarter] CHAR(4) NOT NULL, 
    [CalendarMonth] CHAR(2) NOT NULL, 
    [CalendarDay] CHAR(2) NOT NULL, 
    [CalendarMonthName] VARCHAR(32) NOT NULL, 
    [CalendarDayName] VARCHAR(32) NOT NULL, 
    [ISOWeek] CHAR(2) NOT NULL, 
    CONSTRAINT [PK_dimDateInterval] PRIMARY KEY ([Id]) 
)

GO

CREATE INDEX [IX_dimDateInterval_DateKey] ON [dim].[DateInterval] ([DateKey])
