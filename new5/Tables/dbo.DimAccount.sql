SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimAccount] (
		[AccountKey]                        [int] IDENTITY(1, 1) NOT NULL,
		[ParentAccountKey]                  [int] NULL,
		[AccountCodeAlternateKey]           [int] NULL,
		[ParentAccountCodeAlternateKey]     [int] NULL,
		[AccountDescription]                [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AccountType]                       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Operator]                          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CustomMembers]                     [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ValueType]                         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CustomMemberOptions]               [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_DimAccount]
		PRIMARY KEY
		CLUSTERED
		([AccountKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimAccount]
	WITH CHECK
	ADD CONSTRAINT [FK_DimAccount_DimAccount]
	FOREIGN KEY ([ParentAccountKey]) REFERENCES [dbo].[DimAccount] ([AccountKey])
ALTER TABLE [dbo].[DimAccount]
	CHECK CONSTRAINT [FK_DimAccount_DimAccount]

GO
ALTER TABLE [dbo].[DimAccount] SET (LOCK_ESCALATION = TABLE)
GO
