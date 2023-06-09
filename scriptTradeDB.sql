USE [master]
GO
/****** Object:  Database [TradeDB]    Script Date: 4/3/2023 10:57:09 PM ******/
CREATE DATABASE [TradeDB]
GO

USE [TradeDB]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[UserID] [int] NULL,
	[OrderCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF4EBD89B0] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointID] [int] IDENTITY(1,1) NOT NULL,
	[PickupPointIndex] [int] NOT NULL,
	[PickupPointCity] [nvarchar](50) NOT NULL,
	[PickupPointStreet] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[PickupPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NOT NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/3/2023 10:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (1, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 18, NULL, N'701       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (2, 2, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 14, NULL, N'702       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (3, 1, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 22, 9, N'703       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (4, 2, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 22, NULL, N'704       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (5, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 26, 8, N'705       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (6, 2, CAST(N'2022-05-26T00:00:00.000' AS DateTime), CAST(N'2022-05-20T00:00:00.000' AS DateTime), 28, NULL, N'706       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (7, 1, CAST(N'2022-05-28T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 28, 10, N'707       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (8, 2, CAST(N'2022-05-28T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 32, NULL, N'708       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (9, 1, CAST(N'2022-05-29T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 36, NULL, N'709       ')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderDate], [OrderPickupPoint], [UserID], [OrderCode]) VALUES (10, 1, CAST(N'2022-05-30T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 36, 7, N'710       ')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatusValue]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatusValue]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (1, 344288, N'Сыктывкар', N' Чехова  1')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (2, 614164, N'Сыктывкар', N' Степная  30')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (3, 394242, N'Сыктывкар', N' Коммунистическая  43')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (4, 660540, N'Сыктывкар', N' Солнечная  25')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (5, 125837, N'Сыктывкар', N' Шоссейная  40')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (6, 125703, N'Сыктывкар', N' Партизанская  49')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (7, 625283, N'Сыктывкар', N' Победы  46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (8, 614611, N'Сыктывкар', N' Молодежная  50')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (9, 454311, N'Сыктывкар', N' Новая  19')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (10, 660007, N'Сыктывкар', N' Октябрьская  19')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (11, 603036, N'Сыктывкар', N' Садовая  4')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (12, 450983, N'Сыктывкар', N' Комсомольская  26')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (13, 394782, N'Сыктывкар', N' Чехова  3')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (14, 603002, N'Сыктывкар', N' Дзержинского  28')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (15, 450558, N'Сыктывкар', N' Набережная  30')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (16, 394060, N'Сыктывкар', N' Фрунзе  43')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (17, 410661, N'Сыктывкар', N' Школьная  50')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (18, 625590, N'Сыктывкар', N' Коммунистическая  20')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (19, 625683, N'Сыктывкар', N' 8 Марта')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (20, 400562, N'Сыктывкар', N' Зеленая  32')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (21, 614510, N'Сыктывкар', N' Маяковского  47')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (22, 410542, N'Сыктывкар', N' Светлая  46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (23, 620839, N'Сыктывкар', N' Цветочная  8')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (24, 443890, N'Сыктывкар', N' Коммунистическая  1')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (25, 603379, N'Сыктывкар', N' Спортивная  46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (26, 603721, N'Сыктывкар', N' Гоголя  41')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (27, 410172, N'Сыктывкар', N' Северная  13')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (28, 420151, N'Сыктывкар', N' Вишневая  32')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (29, 125061, N'Сыктывкар', N' Подгорная  8')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (30, 630370, N'Сыктывкар', N' Шоссейная  24')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (31, 614753, N'Сыктывкар', N' Полевая  35')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (32, 426030, N'Сыктывкар', N' Маяковского  44')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (33, 450375, N'Сыктывкар', N' Клубная  44')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (34, 625560, N'Сыктывкар', N' Некрасова  12')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (35, 630201, N'Сыктывкар', N' Комсомольская  17')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (36, 190949, N'Сыктывкар', N' Мичурина  26')
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Басова', N'Амина', N'Кирилловна', N'klh7pi4rcbtz@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Михайлов', N'Андрей', N'Денисович', N'gn0354mbiork@outlook.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Сидоров', N'Егор', N'Александрович', N'1o4l05k8dwpv@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Аксенова', N'Ульяна', N'Ивановна', N'hsqixl2vebuz@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Васильева', N'Камила', N'Ивановна', N'towkse0hf26b@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Ильин', N'Артём', N'Родионович', N'khx0ncdwz4uj@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Васильева', N'Василиса', N'Фёдоровна', N'01zji3wfuq7h@outlook.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Кудрявцева', N'Василиса', N'Матвеевна', N'am65k18q7bwp@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Кириллова', N'Николь', N'Святославовна', N'wt9q8i6ypx47@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Андреева', N'Полина', N'Артёмовна', N'4o72gufv3xlz@tutanota.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([PickupPointID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Order__3F466844] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Order__3F466844]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO

