USE [Storage]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 12/24/2023 1:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Producer] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/24/2023 1:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Name] [nchar](150) NOT NULL,
	[CountNow] [int] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/24/2023 1:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/24/2023 1:13:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [Name], [Image], [Producer]) VALUES (1, N'Резина                                                                                              ', N'D:\prac\Storage\Storage\Image\Material_12.jpeg', N'Николавеский завод                                                                                  ')
INSERT [dbo].[Material] ([Id], [Name], [Image], [Producer]) VALUES (3, N'Шерсть                                                                                              ', N'D:\prac\Storage\Storage\Image\material_100.jpg', N'Нижегродский комбинат туда сюда                                                                     ')
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (1, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (2, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (3, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (5, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (6, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (7, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (8, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (9, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (10, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (11, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (12, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (13, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (14, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (18, N'D:\prac\Storage\Storage\Image\Product_5.jpеg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (19, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (20, N'D:\prac\Storage\Storage\Image\Product_5.jpеg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (21, N'D:\prac\Storage\Storage\Image\Product_6.jpg', N'Свитер                                                                                                                                                ', 11, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (22, N'D:\prac\Storage\Storage\Image\Product_7.jpg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (23, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (24, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (25, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (26, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (27, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (28, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (29, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (30, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (31, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (32, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (33, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (34, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (35, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (36, N'D:\prac\Storage\Storage\Image\Product_5.jpеg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (37, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (38, N'D:\prac\Storage\Storage\Image\Product_5.jpеg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (39, N'D:\prac\Storage\Storage\Image\Product_6.jpg', N'Свитер                                                                                                                                                ', 11, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (40, N'D:\prac\Storage\Storage\Image\Product_7.jpg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (41, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (42, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (43, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (44, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (45, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (46, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (47, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (48, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (49, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (50, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (51, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (52, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (53, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (54, N'D:\prac\Storage\Storage\Image\Product_5.jpеg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (55, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (56, N'D:\prac\Storage\Storage\Image\Product_5.jpеg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (57, N'D:\prac\Storage\Storage\Image\Product_6.jpg', N'Свитер                                                                                                                                                ', 11, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (58, N'D:\prac\Storage\Storage\Image\Product_7.jpg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (59, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (60, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (61, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (62, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (63, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (64, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (65, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (66, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (67, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (68, N'D:\prac\Storage\Storage\Image\Product_1.jpg', N'Перчатки резиновые                                                                                                                                    ', 12, 1, N'Перчатки резиновые для хим.вещ')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (69, N'D:\prac\Storage\Storage\Image\Product_2.jpg', N'Сапоги резиновые                                                                                                                                      ', 5, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (70, N'D:\prac\Storage\Storage\Image\Product_3.jpg', N'Сапоги резиновые                                                                                                                                      ', 130, 1, N'Сапоги резиновые озк')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (71, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (72, N'D:\prac\Storage\Storage\Image\Product_6.jpg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (73, N'D:\prac\Storage\Storage\Image\Product_4.jpg', N'Плащ резиновый                                                                                                                                        ', 11, 1, N'Плащ резиновый')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (74, N'D:\prac\Storage\Storage\Image\Product_6.jpg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (75, N'D:\prac\Storage\Storage\Image\Product_6.jpg', N'Свитер                                                                                                                                                ', 11, 3, N'Свитер')
INSERT [dbo].[Product] ([Id], [Image], [Name], [CountNow], [MaterialId], [Description]) VALUES (76, N'D:\prac\Storage\Storage\Image\Product_7.jpg', N'Свитер                                                                                                                                                ', 99, 3, N'Свитер')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin     ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'User      ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (1, N'ad                                                                                                  ', N'1', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (2, N'us                                                                                                  ', N'2', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Material]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
