SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactCallCenter] (
		[FactCallCenterID]        [int] IDENTITY(1, 1) NOT NULL,
		[DateKey]                 [int] NOT NULL,
		[WageType]                [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Shift]                   [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LevelOneOperators]       [smallint] NOT NULL,
		[LevelTwoOperators]       [smallint] NOT NULL,
		[TotalOperators]          [smallint] NOT NULL,
		[Calls]                   [int] NOT NULL,
		[AutomaticResponses]      [int] NOT NULL,
		[Orders]                  [int] NOT NULL,
		[IssuesRaised]            [smallint] NOT NULL,
		[AverageTimePerIssue]     [smallint] NOT NULL,
		[ServiceGrade]            [float] NOT NULL,
		[Date]                    [datetime] NULL,
		CONSTRAINT [AK_FactCallCenter_DateKey_Shift]
		UNIQUE
		NONCLUSTERED
		([DateKey], [Shift])
		ON [PRIMARY],
		CONSTRAINT [PK_FactCallCenter_FactCallCenterID]
		PRIMARY KEY
		CLUSTERED
		([FactCallCenterID])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactCallCenter]
	WITH CHECK
	ADD CONSTRAINT [FK_FactCallCenter_DimDate]
	FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactCallCenter]
	CHECK CONSTRAINT [FK_FactCallCenter_DimDate]

GO
ALTER TABLE [dbo].[FactCallCenter] SET (LOCK_ESCALATION = TABLE)
GO
