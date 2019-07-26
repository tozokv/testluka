SET IDENTITY_INSERT [HumanResources].[Shift] ON 

INSERT [HumanResources].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate]) VALUES (1, N'Day', CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate]) VALUES (2, N'Evening', CAST(N'15:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate]) VALUES (3, N'Night', CAST(N'23:00:00' AS Time), CAST(N'07:00:00' AS Time), CAST(N'2008-04-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [HumanResources].[Shift] OFF
