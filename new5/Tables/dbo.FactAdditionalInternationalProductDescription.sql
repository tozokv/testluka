SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactAdditionalInternationalProductDescription] (
		[ProductKey]             [int] NOT NULL,
		[CultureName]            [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ProductDescription]     [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_FactAdditionalInternationalProductDescription_ProductKey_CultureName]
		PRIMARY KEY
		CLUSTERED
		([ProductKey], [CultureName])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactAdditionalInternationalProductDescription] SET (LOCK_ESCALATION = TABLE)
GO
