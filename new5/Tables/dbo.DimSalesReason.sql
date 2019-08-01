SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimSalesReason] (
		[SalesReasonKey]              [int] IDENTITY(1, 1) NOT NULL,
		[SalesReasonAlternateKey]     [int] NOT NULL,
		[SalesReasonName]             [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SalesReasonReasonType]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_DimSalesReason_SalesReasonKey]
		PRIMARY KEY
		CLUSTERED
		([SalesReasonKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimSalesReason] SET (LOCK_ESCALATION = TABLE)
GO
