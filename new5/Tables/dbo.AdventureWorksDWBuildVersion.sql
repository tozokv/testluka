SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdventureWorksDWBuildVersion] (
		[DBVersion]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[VersionDate]     [datetime] NULL
)
GO
ALTER TABLE [dbo].[AdventureWorksDWBuildVersion] SET (LOCK_ESCALATION = TABLE)
GO
