SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimScenario] (
		[ScenarioKey]      [int] IDENTITY(1, 1) NOT NULL,
		[ScenarioName]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_DimScenario]
		PRIMARY KEY
		CLUSTERED
		([ScenarioKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimScenario] SET (LOCK_ESCALATION = TABLE)
GO
