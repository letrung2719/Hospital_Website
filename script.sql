
USE [HospitalWebsite]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 9/22/2021 3:29:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/22/2021 3:29:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Gender] [bit] NULL,
	[DOB] [date] NULL,
	[Phone] [nvarchar](10) NULL,
	[Email] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (1, N'trung123', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (2, N'minh123', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (3, N'kien123', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (4, N'hoang123', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (5, N'chien123', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (6, N'minhvakien', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (7, N'minhvatrung', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (8, N'testdk', N'12345')
INSERT [dbo].[Accounts] ([UserID], [username], [password]) VALUES (9, N'kiennt', N'12345')
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (1, N'Le Thanh Trung', 1, CAST(N'2001-08-27' AS Date), N'0395127655', N'trunglthe151129@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (2, N'Hoang Anh Minh', 0, CAST(N'2000-11-03' AS Date), N'0123456789', N'minhbeo@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (3, N'Nguyen The Kien', 0, CAST(N'2005-02-15' AS Date), N'0242452389', N'kienboss@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (4, N'Trinh Viet Hoang', 1, CAST(N'2001-09-30' AS Date), N'0912348521', N'hoangtubongdem@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (5, N'Ngo Van Chien', 1, CAST(N'2007-05-22' AS Date), N'0893124134', N'ladykiller@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (6, N'name', 1, CAST(N'2000-01-01' AS Date), N'0123456789', N'name@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (7, N'name', 1, CAST(N'2000-01-01' AS Date), N'0123456789', N'name@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (8, N'name', 1, CAST(N'2000-01-01' AS Date), N'1234567890', N'name@gmail.com')
INSERT [dbo].[Users] ([UserID], [Name], [Gender], [DOB], [Phone], [Email]) VALUES (9, N'name', 1, CAST(N'2000-01-01' AS Date), N'1234567890', N'name@gmail.com')
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Accounts] ([UserID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  ((NOT [Phone] like '%[^0-9]%' AND len([Phone])>=(8) AND len([Phone])<=(10)))
GO




select * from Accounts
select * from Users

DELETE FROM Accounts
WHERE Accounts.UserID = 5;
DELETE FROM Users
WHERE [USERs].UserID = 5;