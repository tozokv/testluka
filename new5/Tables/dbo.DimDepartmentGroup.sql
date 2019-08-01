SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimDepartmentGroup] (
		[DepartmentGroupKey]           [int] IDENTITY(1, 1) NOT NULL,
		[ParentDepartmentGroupKey]     [int] NULL,
		[DepartmentGroupName]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_DimDepartmentGroup]
		PRIMARY KEY
		CLUSTERED
		([DepartmentGroupKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimDepartmentGroup]
	WITH CHECK
	ADD CONSTRAINT [FK_DimDepartmentGroup_DimDepartmentGroup]
	FOREIGN KEY ([ParentDepartmentGroupKey]) REFERENCES [dbo].[DimDepartmentGroup] ([DepartmentGroupKey])
ALTER TABLE [dbo].[DimDepartmentGroup]
	CHECK CONSTRAINT [FK_DimDepartmentGroup_DimDepartmentGroup]

GO
ALTER TABLE [dbo].[DimDepartmentGroup] SET (LOCK_ESCALATION = TABLE)
GO
