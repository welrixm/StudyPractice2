USE [Products]
GO
/****** Object:  Table [dbo].[DocumentByProduct]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByProduct](
	[Id] [int] NOT NULL,
	[ProductOrderId] [int] NOT NULL,
 CONSTRAINT [PK_DocumentByProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecutionStage]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecutionStage](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Execution Stage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManufacturerCountry]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManufacturerCountry](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] NOT NULL,
	[DateOrder] [date] NULL,
	[TotalCost] [decimal](18, 0) NULL,
	[ExecutionStageId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [decimal](18, 0) NULL,
	[MainImage] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[DateOfAddition] [date] NULL,
	[UnitId] [int] NOT NULL,
	[ManufacturerCountryId] [int] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrder](
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Product_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductShipment]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductShipment](
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ShipmentId] [int] NOT NULL,
	[PurchasePrice] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ProductShipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[Id] [int] NOT NULL,
	[Date] [date] NULL,
	[PurchasePrice] [int] NULL,
	[ProviderId] [int] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01.12.2022 18:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[DateOdBirthDay] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[GenderId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Administrator')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, NULL)
GO
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FirstName], [LastName], [Patronymic], [DateOdBirthDay], [Email], [GenderId]) VALUES (1, N'123', N'123', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FirstName], [LastName], [Patronymic], [DateOdBirthDay], [Email], [GenderId]) VALUES (2, N'223', N'223', 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FirstName], [LastName], [Patronymic], [DateOdBirthDay], [Email], [GenderId]) VALUES (3, N'323', N'323', 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FirstName], [LastName], [Patronymic], [DateOdBirthDay], [Email], [GenderId]) VALUES (4, N'423', N'423', 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FirstName], [LastName], [Patronymic], [DateOdBirthDay], [Email], [GenderId]) VALUES (5, N'523', N'523', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[DocumentByProduct]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByProduct_ProductOrder] FOREIGN KEY([ProductOrderId])
REFERENCES [dbo].[ProductOrder] ([Id])
GO
ALTER TABLE [dbo].[DocumentByProduct] CHECK CONSTRAINT [FK_DocumentByProduct_ProductOrder]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ExecutionStage] FOREIGN KEY([ExecutionStageId])
REFERENCES [dbo].[ExecutionStage] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ExecutionStage]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ManufacturerCountry] FOREIGN KEY([ManufacturerCountryId])
REFERENCES [dbo].[ManufacturerCountry] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ManufacturerCountry]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Unit]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [FK_ProductOrder_Order]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [FK_ProductOrder_Product]
GO
ALTER TABLE [dbo].[ProductShipment]  WITH CHECK ADD  CONSTRAINT [FK_ProductShipment_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductShipment] CHECK CONSTRAINT [FK_ProductShipment_Product]
GO
ALTER TABLE [dbo].[ProductShipment]  WITH CHECK ADD  CONSTRAINT [FK_ProductShipment_Shipment] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[Shipment] ([Id])
GO
ALTER TABLE [dbo].[ProductShipment] CHECK CONSTRAINT [FK_ProductShipment_Shipment]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Provider] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Provider] ([Id])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Provider]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Gender]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
