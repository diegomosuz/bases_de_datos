go
create database ZRESTAURANTE;
go
use ZRESTAURANTE;
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facturas](
	[NroFactura] [int] NOT NULL,
	[IdMesa] [int] NOT NULL,
	[IdMozo] [int] NOT NULL,
	[cantidadPersonas] [int] NULL,
	[total] [decimal](6, 2) NULL,
	[fechaApertura] [datetime] NULL,
	[horaApertuta] [datetime] NULL,
	[fechaCierre] [datetime] NULL,
	[horaCierre] [datetime] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[NroFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Ingredientes]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Ingredientes](
	[IdIngrediente] [int] NOT NULL,
	[descripcion] [varchar](40) NULL,
	[cUniCompra] [int] NULL,
	[cUniUso] [int] NULL,
	[precComp] [decimal](6, 2) NULL,
	[precUso] [decimal](8, 6) NULL,
	[stock] [decimal](8, 3) NULL,
	[puntoRep] [decimal](8, 3) NULL,
	[cantComp] [decimal](8, 3) NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[IdIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ItemsFactura]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ItemsFactura](
	[NroFactura] [int] NOT NULL,
	[IdPlato] [int] NOT NULL,
	[cantida] [int] NULL,
	[precio] [decimal](6, 2) NULL,
 CONSTRAINT [PK_ItemsFactura] PRIMARY KEY CLUSTERED 
(
	[NroFactura] ASC,
	[IdPlato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Localidades]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Localidades](
	[IdCodpos] [int] NOT NULL,
	[localida] [varchar](40) NULL,
 CONSTRAINT [PK_Localida] PRIMARY KEY CLUSTERED 
(
	[IdCodpos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Mesas]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Mesas](
	[IdMesa] [int] NOT NULL,
	[Descripcion] [varchar](40) NULL,
	[IdSector] [int] NULL,
 CONSTRAINT [PK_Mesas] PRIMARY KEY CLUSTERED 
(
	[IdMesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Mozos]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Mozos](
	[IdMozo] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
	[calle] [varchar](40) NULL,
	[numero] [int] NULL,
	[piso] [int] NULL,
	[departamento] [varchar](4) NULL,
	[IdCodPos] [int] NULL,
 CONSTRAINT [PK_Mozos] PRIMARY KEY CLUSTERED 
(
	[IdMozo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PlaIng]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PlaIng](
	[IdPlato] [int] NOT NULL,
	[IdIngrediente] [int] NOT NULL,
	[cantida] [decimal](6, 3) NULL,
 CONSTRAINT [PK_PlaIng] PRIMARY KEY CLUSTERED 
(
	[IdPlato] ASC,
	[IdIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Platos]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Platos](
	[IdPlato] [int] NOT NULL,
	[descripcion] [varchar](25) NULL,
	[precio] [decimal](5, 2) NULL,
	[IdRubro] [int] NULL,
 CONSTRAINT [PK_Platos] PRIMARY KEY CLUSTERED 
(
	[IdPlato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ProIng]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ProIng](
	[IdIngrediente] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[factor] [decimal](6, 3) NULL,
	[fechComp] [datetime] NOT NULL,
 CONSTRAINT [PK_ProIng] PRIMARY KEY CLUSTERED 
(
	[IdIngrediente] ASC,
	[IdProveedor] ASC,
	[fechComp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Proveedores]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Proveedores](
	[IdProveedor] [int] NOT NULL,
	[razsoc] [varchar](40) NULL,
	[calle] [varchar](40) NULL,
	[numero] [int] NULL,
	[piso] [int] NULL,
	[departamento] [varchar](4) NULL,
	[IdCodPos] [int] NULL,
 CONSTRAINT [PK_Proveed] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Rubros]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Rubros](
	[IdRubro] [int] NOT NULL,
	[descripcion] [varchar](40) NULL,
 CONSTRAINT [PK_Rubro] PRIMARY KEY CLUSTERED 
(
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Sectores]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Sectores](
	[IdSector] [int] NOT NULL,
	[descripcion] [varchar](40) NULL,
 CONSTRAINT [PK_Sectores] PRIMARY KEY CLUSTERED 
(
	[IdSector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TelefonoMozo]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TelefonoMozo](
	[IdTelefono] [int] NOT NULL,
	[IdMozo] [int] NOT NULL,
	[codArea] [int] NULL,
	[central] [int] NULL,
	[numero] [int] NULL,
	[celular] [int] NULL,
 CONSTRAINT [PK_TelefonoMozo] PRIMARY KEY CLUSTERED 
(
	[IdTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [TelefonoProveedor]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TelefonoProveedor](
	[IdTelefono] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[codArea] [int] NULL,
	[central] [int] NULL,
	[numero] [int] NULL,
 CONSTRAINT [PK_TelefonoProveedor] PRIMARY KEY CLUSTERED 
(
	[IdTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Unidades]    Script Date: 19/10/2017 07:59:51 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Unidades](
	[IdUnidad] [int] NOT NULL,
	[descripcion] [varchar](40) NULL,
 CONSTRAINT [PK_Unidades] PRIMARY KEY CLUSTERED 
(
	[IdUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (1, 1, 3, 2, CAST(165.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x00000000016DD840 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (2, 3, 4, 2, CAST(34.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x000000000172C9E0 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (3, 4, 3, 2, CAST(62.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x0000000001731030 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (4, 3, 2, 2, CAST(98.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x00000000015D5D80 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (5, 7, 1, 2, CAST(24.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x00000000017B0740 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (6, 6, 4, 2, CAST(86.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x00000000016EAB30 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (7, 9, 5, 2, CAST(18.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x00000000017C66D0 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Facturas] ([NroFactura], [IdMesa], [IdMozo], [cantidadPersonas], [total], [fechaApertura], [horaApertuta], [fechaCierre], [horaCierre]) VALUES (8, 2, 3, 2, CAST(154.00 AS Decimal(6, 2)), CAST(0x00009B9200000000 AS DateTime), CAST(0x0000000001662780 AS DateTime), CAST(0x00009B9200000000 AS DateTime), NULL)
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (116, N'Gancia', 13, 12, CAST(48.00 AS Decimal(6, 2)), CAST(0.048000 AS Decimal(8, 6)), CAST(10.000 AS Decimal(8, 3)), CAST(6.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (201, N'Colon Riesling', 1, 1, CAST(36.00 AS Decimal(6, 2)), CAST(6.000000 AS Decimal(8, 6)), CAST(20.000 AS Decimal(8, 3)), CAST(20.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (202, N'Suter Etiqueta Marron', 1, 1, CAST(48.00 AS Decimal(6, 2)), CAST(8.000000 AS Decimal(8, 6)), CAST(22.000 AS Decimal(8, 3)), CAST(20.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (205, N'Mont Fleuri', 1, 1, CAST(48.00 AS Decimal(6, 2)), CAST(8.000000 AS Decimal(8, 6)), CAST(24.000 AS Decimal(8, 3)), CAST(20.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (206, N'Chateau Vieux', 1, 1, CAST(36.00 AS Decimal(6, 2)), CAST(6.000000 AS Decimal(8, 6)), CAST(30.000 AS Decimal(8, 3)), CAST(35.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (207, N'San Felipe', 1, 1, CAST(36.00 AS Decimal(6, 2)), CAST(6.000000 AS Decimal(8, 6)), CAST(23.000 AS Decimal(8, 3)), CAST(30.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (208, N'Bianchi Borgo¤a', 1, 1, CAST(24.00 AS Decimal(6, 2)), CAST(4.000000 AS Decimal(8, 6)), CAST(21.000 AS Decimal(8, 3)), CAST(44.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (209, N'Clos du Moulin', 1, 1, CAST(36.00 AS Decimal(6, 2)), CAST(6.000000 AS Decimal(8, 6)), CAST(32.000 AS Decimal(8, 3)), CAST(23.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (210, N'Comte du Valmont ', 1, 1, CAST(48.00 AS Decimal(6, 2)), CAST(8.000000 AS Decimal(8, 6)), CAST(41.000 AS Decimal(8, 3)), CAST(31.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (211, N'Chateau Monchenot', 1, 1, CAST(48.00 AS Decimal(6, 2)), CAST(8.000000 AS Decimal(8, 6)), CAST(22.000 AS Decimal(8, 3)), CAST(33.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (212, N'San Felipe', 1, 1, CAST(24.00 AS Decimal(6, 2)), CAST(4.000000 AS Decimal(8, 6)), CAST(42.000 AS Decimal(8, 3)), CAST(24.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (213, N'Vintage', 1, 1, CAST(24.00 AS Decimal(6, 2)), CAST(4.000000 AS Decimal(8, 6)), CAST(21.000 AS Decimal(8, 3)), CAST(30.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (214, N'Armaneuse', 1, 1, CAST(36.00 AS Decimal(6, 2)), CAST(6.000000 AS Decimal(8, 6)), CAST(12.000 AS Decimal(8, 3)), CAST(15.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (215, N'Flitchman', 1, 1, CAST(36.00 AS Decimal(6, 2)), CAST(6.000000 AS Decimal(8, 6)), CAST(33.000 AS Decimal(8, 3)), CAST(24.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (217, N'Tia Maria', 13, 12, CAST(48.00 AS Decimal(6, 2)), CAST(0.048000 AS Decimal(8, 6)), CAST(10.000 AS Decimal(8, 3)), CAST(6.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (218, N'Contreau', 13, 12, CAST(48.00 AS Decimal(6, 2)), CAST(0.048000 AS Decimal(8, 6)), CAST(10.000 AS Decimal(8, 3)), CAST(6.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (219, N'Jonny Walker Black', 13, 12, CAST(120.00 AS Decimal(6, 2)), CAST(0.120000 AS Decimal(8, 6)), CAST(5.000 AS Decimal(8, 3)), CAST(6.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (220, N'Courvosier Napoleon', 13, 12, CAST(240.00 AS Decimal(6, 2)), CAST(0.240000 AS Decimal(8, 6)), CAST(1.000 AS Decimal(8, 3)), CAST(2.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (221, N'Bianchi Chablis', 1, 1, CAST(24.00 AS Decimal(6, 2)), CAST(4.000000 AS Decimal(8, 6)), CAST(21.000 AS Decimal(8, 3)), CAST(44.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (222, N'Hennesey V.S.O.P', 13, 12, CAST(360.00 AS Decimal(6, 2)), CAST(0.360000 AS Decimal(8, 6)), CAST(1.000 AS Decimal(8, 3)), CAST(2.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (230, N'Trucha ', 3, 16, CAST(80.00 AS Decimal(6, 2)), CAST(5.000000 AS Decimal(8, 6)), CAST(50.000 AS Decimal(8, 3)), CAST(17.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (232, N'Tomates ', 15, 11, CAST(80.00 AS Decimal(6, 2)), CAST(0.004000 AS Decimal(8, 6)), CAST(8000.000 AS Decimal(8, 3)), CAST(5000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (233, N'Langostinos ', 5, 11, CAST(200.00 AS Decimal(6, 2)), CAST(0.004000 AS Decimal(8, 6)), CAST(2000.000 AS Decimal(8, 3)), CAST(1000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (234, N'Champingones ', 10, 11, CAST(20.00 AS Decimal(6, 2)), CAST(0.002000 AS Decimal(8, 6)), CAST(2000.000 AS Decimal(8, 3)), CAST(1500.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (235, N'Kanikama ', 10, 11, CAST(80.00 AS Decimal(6, 2)), CAST(0.080000 AS Decimal(8, 6)), CAST(2000.000 AS Decimal(8, 3)), CAST(1000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (236, N'Queso Rallado ', 10, 11, CAST(30.00 AS Decimal(6, 2)), CAST(0.030000 AS Decimal(8, 6)), CAST(500.000 AS Decimal(8, 3)), CAST(1500.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (237, N'Jamon de Ciervo ', 10, 11, CAST(120.00 AS Decimal(6, 2)), CAST(0.120000 AS Decimal(8, 6)), CAST(5000.000 AS Decimal(8, 3)), CAST(1000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (238, N'Alcaparras ', 10, 11, CAST(60.00 AS Decimal(6, 2)), CAST(0.060000 AS Decimal(8, 6)), CAST(1000.000 AS Decimal(8, 3)), CAST(400.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (239, N'Limon ', 6, 11, CAST(70.00 AS Decimal(6, 2)), CAST(0.007000 AS Decimal(8, 6)), CAST(15000.000 AS Decimal(8, 3)), CAST(4000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (241, N'Manteca ', 8, 11, CAST(20.00 AS Decimal(6, 2)), CAST(0.020000 AS Decimal(8, 6)), CAST(1500.000 AS Decimal(8, 3)), CAST(3000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (242, N'Salmon ', 2, 16, CAST(80.00 AS Decimal(6, 2)), CAST(6.640000 AS Decimal(8, 6)), CAST(30.000 AS Decimal(8, 3)), CAST(19.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (243, N'Crema ', 9, 12, CAST(6.00 AS Decimal(6, 2)), CAST(0.006000 AS Decimal(8, 6)), CAST(12000.000 AS Decimal(8, 3)), CAST(10000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (244, N'Pollo ', 10, 11, CAST(10.00 AS Decimal(6, 2)), CAST(0.010000 AS Decimal(8, 6)), CAST(15000.000 AS Decimal(8, 3)), CAST(17000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (245, N'Pavo ', 16, 11, CAST(140.00 AS Decimal(6, 2)), CAST(0.014000 AS Decimal(8, 6)), CAST(10000.000 AS Decimal(8, 3)), CAST(10000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (246, N'Cebolla ', 6, 11, CAST(30.00 AS Decimal(6, 2)), CAST(0.003000 AS Decimal(8, 6)), CAST(25000.000 AS Decimal(8, 3)), CAST(15000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (247, N'Cebolla de Verdeo ', 5, 11, CAST(40.00 AS Decimal(6, 2)), CAST(0.008000 AS Decimal(8, 6)), CAST(4300.000 AS Decimal(8, 3)), CAST(5000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (248, N'Lomo ', 10, 11, CAST(26.00 AS Decimal(6, 2)), CAST(0.026000 AS Decimal(8, 6)), CAST(4300.000 AS Decimal(8, 3)), CAST(9000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (251, N'Marsalla ', 13, 12, CAST(8.00 AS Decimal(6, 2)), CAST(0.008000 AS Decimal(8, 6)), CAST(1000.000 AS Decimal(8, 3)), CAST(2000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (252, N'Carre de Cerdo ', 10, 11, CAST(22.00 AS Decimal(6, 2)), CAST(0.022000 AS Decimal(8, 6)), CAST(2300.000 AS Decimal(8, 3)), CAST(5000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (253, N'Cerezas ', 8, 11, CAST(24.00 AS Decimal(6, 2)), CAST(0.002400 AS Decimal(8, 6)), CAST(2000.000 AS Decimal(8, 3)), CAST(1000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (254, N'Fetuccini ', 8, 11, CAST(8.00 AS Decimal(6, 2)), CAST(0.008000 AS Decimal(8, 6)), CAST(3000.000 AS Decimal(8, 3)), CAST(4000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (255, N'Tagliatelli ', 8, 11, CAST(10.00 AS Decimal(6, 2)), CAST(0.010000 AS Decimal(8, 6)), CAST(4500.000 AS Decimal(8, 3)), CAST(4000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (256, N'Ravioles ', 8, 11, CAST(10.00 AS Decimal(6, 2)), CAST(0.010000 AS Decimal(8, 6)), CAST(4000.000 AS Decimal(8, 3)), CAST(4000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (257, N'Ficcile ', 8, 11, CAST(8.00 AS Decimal(6, 2)), CAST(0.008000 AS Decimal(8, 6)), CAST(2500.000 AS Decimal(8, 3)), CAST(4000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (258, N'Sorrentinos ', 8, 11, CAST(12.00 AS Decimal(6, 2)), CAST(0.012000 AS Decimal(8, 6)), CAST(1500.000 AS Decimal(8, 3)), CAST(4000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (265, N'Frutillas ', 5, 11, CAST(8.00 AS Decimal(6, 2)), CAST(0.008000 AS Decimal(8, 6)), CAST(2800.000 AS Decimal(8, 3)), CAST(3000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (267, N'Biscochuelo ', 16, 11, CAST(16.00 AS Decimal(6, 2)), CAST(0.016000 AS Decimal(8, 6)), CAST(4000.000 AS Decimal(8, 3)), CAST(2000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (268, N'Bananas ', 17, 16, CAST(8.00 AS Decimal(6, 2)), CAST(0.660000 AS Decimal(8, 6)), CAST(36.000 AS Decimal(8, 3)), CAST(12.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (269, N'Dulce de Leche ', 10, 11, CAST(14.00 AS Decimal(6, 2)), CAST(0.014000 AS Decimal(8, 6)), CAST(2000.000 AS Decimal(8, 3)), CAST(1700.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (270, N'Helado Americana ', 18, 12, CAST(60.00 AS Decimal(6, 2)), CAST(0.012000 AS Decimal(8, 6)), CAST(3100.000 AS Decimal(8, 3)), CAST(2000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (271, N'Helado Chocolate ', 18, 12, CAST(60.00 AS Decimal(6, 2)), CAST(0.012000 AS Decimal(8, 6)), CAST(2700.000 AS Decimal(8, 3)), CAST(2000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (272, N'Helado Frutilla ', 18, 12, CAST(60.00 AS Decimal(6, 2)), CAST(0.012000 AS Decimal(8, 6)), CAST(1700.000 AS Decimal(8, 3)), CAST(2000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (273, N'Almendrado ', 4, 16, CAST(120.00 AS Decimal(6, 2)), CAST(2.400000 AS Decimal(8, 6)), CAST(50.000 AS Decimal(8, 3)), CAST(30.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (274, N'Salsa de Chocolate ', 14, 12, CAST(12.00 AS Decimal(6, 2)), CAST(0.012000 AS Decimal(8, 6)), CAST(1200.000 AS Decimal(8, 3)), CAST(1000.000 AS Decimal(8, 3)), CAST(0.003 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (275, N'Enalada de Frutas ', 10, 11, CAST(12.00 AS Decimal(6, 2)), CAST(0.012000 AS Decimal(8, 6)), CAST(1000.000 AS Decimal(8, 3)), CAST(3000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (276, N'Obleas ', 8, 16, CAST(16.00 AS Decimal(6, 2)), CAST(0.160000 AS Decimal(8, 6)), CAST(50.000 AS Decimal(8, 3)), CAST(30.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (277, N'Huevos ', 17, 16, CAST(10.00 AS Decimal(6, 2)), CAST(0.830000 AS Decimal(8, 6)), CAST(48.000 AS Decimal(8, 3)), CAST(96.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (300, N'Cafe en Granos ', 5, 11, CAST(160.00 AS Decimal(6, 2)), CAST(0.032000 AS Decimal(8, 6)), CAST(8000.000 AS Decimal(8, 3)), CAST(10000.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [Ingredientes] ([IdIngrediente], [descripcion], [cUniCompra], [cUniUso], [precComp], [precUso], [stock], [puntoRep], [cantComp]) VALUES (301, N'Leche ', 9, 12, CAST(2.00 AS Decimal(6, 2)), CAST(0.002000 AS Decimal(8, 6)), CAST(6.000 AS Decimal(8, 3)), CAST(5.000 AS Decimal(8, 3)), CAST(0.001 AS Decimal(8, 3)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 100, 1, CAST(13.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 102, 1, CAST(24.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 402, 1, CAST(16.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 406, 1, CAST(24.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 702, 2, CAST(14.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 803, 1, CAST(30.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (1, 1005, 1, CAST(30.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (2, 1003, 2, CAST(14.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (2, 1108, 2, CAST(3.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (3, 303, 1, CAST(22.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (3, 502, 1, CAST(12.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (3, 603, 2, CAST(7.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (3, 807, 1, CAST(14.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (4, 1000, 3, CAST(6.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (4, 1001, 2, CAST(8.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (4, 1003, 4, CAST(16.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (5, 1108, 8, CAST(3.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (6, 403, 2, CAST(16.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (6, 601, 2, CAST(12.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (6, 803, 1, CAST(30.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (7, 801, 1, CAST(18.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (8, 104, 2, CAST(20.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (8, 404, 1, CAST(18.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (8, 405, 1, CAST(26.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (8, 704, 1, CAST(30.00 AS Decimal(6, 2)))
INSERT [ItemsFactura] ([NroFactura], [IdPlato], [cantida], [precio]) VALUES (8, 905, 2, CAST(20.00 AS Decimal(6, 2)))
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1040, N'Villa Adelina')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1141, N'Parque Centenario')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1321, N'Moreno')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1340, N'Martinez')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1418, N'Bernal')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1512, N'Castelar')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (1736, N'Tigre')
INSERT [Localidades] ([IdCodpos], [localida]) VALUES (6212, N'La Plata')
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (1, N'Mesa Redonda', 1)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (2, N'Mesa Redonda', 1)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (3, N'Rinconera', 1)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (4, N'Rinconera', 1)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (5, N'Reservado', 1)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (6, N'Mesa Redonda', 3)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (7, N'Mesa Redonda', 3)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (8, N'Rinconera', 3)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (9, N'Rinconera', 4)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (10, N'Reservado', 4)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (11, N'Mesa Redonda', 2)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (12, N'Mesa Redonda', 2)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (13, N'Rinconera', 3)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (14, N'Reservado Blanco', 5)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (15, N'Reservado Rosa', 5)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (16, N'Reservado Azul', 5)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (17, N'Reservado Verde', 5)
INSERT [Mesas] ([IdMesa], [Descripcion], [IdSector]) VALUES (18, N'Reservado Gris', 5)
INSERT [Mozos] ([IdMozo], [nombre], [apellido], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (1, N'Juan Carlos', N'Gonzalez', N'Quintana', NULL, 2311, N' ', 1141)
INSERT [Mozos] ([IdMozo], [nombre], [apellido], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (2, N'Ignacio ', N'Ramirez', N'Roca ', 3836, 2, N'C', 1340)
INSERT [Mozos] ([IdMozo], [nombre], [apellido], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (3, N'Pablo ', N'Andrade', N'Cerrito ', 827, NULL, N' ', 1321)
INSERT [Mozos] ([IdMozo], [nombre], [apellido], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (4, N'Carolina ', N'Arce ', N'Castro ', 45, 1, N'F', 1040)
INSERT [Mozos] ([IdMozo], [nombre], [apellido], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (5, N'Maria Belen', N'Zagala ', N'Rivadavia', 4563, NULL, N' ', 1418)
INSERT [Mozos] ([IdMozo], [nombre], [apellido], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (6, N'Romina ', N'Amarante', N'Mansilla', 2210, 8, N'A', 1512)
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (100, 232, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (100, 239, CAST(20.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (100, 241, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (100, 246, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (101, 233, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (101, 239, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (102, 236, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (102, 238, CAST(20.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (102, 239, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (102, 248, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (103, 235, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (103, 239, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (104, 237, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (202, 230, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (202, 241, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (203, 242, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (203, 243, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (204, 239, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (204, 242, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (302, 239, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (302, 244, CAST(500.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (303, 234, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (303, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (303, 245, CAST(400.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (303, 247, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (303, 277, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (304, 236, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (304, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (304, 244, CAST(400.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (305, 234, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (305, 244, CAST(400.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (402, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (402, 248, CAST(250.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (403, 248, CAST(250.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (403, 251, CAST(150.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (404, 234, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (404, 248, CAST(259.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (405, 238, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (405, 252, CAST(300.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (405, 253, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (406, 234, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (406, 243, CAST(150.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (406, 246, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (406, 248, CAST(250.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (502, 236, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (502, 254, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (503, 236, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (503, 255, CAST(300.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (504, 236, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (504, 256, CAST(300.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (505, 236, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (505, 257, CAST(300.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (506, 236, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (506, 257, CAST(300.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (600, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (600, 265, CAST(200.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (601, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (601, 267, CAST(150.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (601, 269, CAST(80.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (601, 274, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (602, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (602, 268, CAST(2.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (602, 269, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (603, 275, CAST(300.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (700, 270, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (700, 271, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (701, 273, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (702, 273, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (702, 274, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (703, 243, CAST(80.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (703, 270, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (703, 275, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (703, 276, CAST(4.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 243, CAST(100.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 253, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 270, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 271, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 272, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 274, CAST(50.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (704, 276, CAST(4.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (800, 221, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (801, 201, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (802, 202, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (803, 211, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (805, 205, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (806, 206, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (807, 207, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (900, 208, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (901, 209, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (902, 210, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (903, 211, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (904, 212, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (905, 213, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (906, 214, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (907, 215, CAST(1.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1000, 116, CAST(150.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1001, 217, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1002, 218, CAST(60.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1003, 219, CAST(40.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1004, 220, CAST(40.000 AS Decimal(6, 3)))
GO
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1005, 222, CAST(40.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1108, 300, CAST(15.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1121, 301, CAST(5.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1133, 300, CAST(15.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1133, 301, CAST(20.000 AS Decimal(6, 3)))
INSERT [PlaIng] ([IdPlato], [IdIngrediente], [cantida]) VALUES (1180, 300, CAST(15.000 AS Decimal(6, 3)))
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (100, N'Tomates Rellenos', CAST(6.50 AS Decimal(5, 2)), 1)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (101, N'Copa de Langostinos', CAST(12.00 AS Decimal(5, 2)), 1)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (102, N'Carpaccio', CAST(8.00 AS Decimal(5, 2)), 1)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (103, N'Kanikama', CAST(6.00 AS Decimal(5, 2)), 1)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (104, N'Jamon de Ciervo', CAST(10.00 AS Decimal(5, 2)), 1)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (202, N'Trucha a la Manteca Negra', CAST(15.00 AS Decimal(5, 2)), 2)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (203, N'Salmon a la Crema', CAST(11.00 AS Decimal(5, 2)), 2)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (204, N'Salmon a la Parrilla', CAST(9.00 AS Decimal(5, 2)), 2)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (302, N'Pollo a la Parrilla', CAST(6.00 AS Decimal(5, 2)), 3)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (303, N'Pavo Relleno', CAST(11.00 AS Decimal(5, 2)), 3)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (304, N'Pollo al Estragon', CAST(9.00 AS Decimal(5, 2)), 3)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (305, N'Pollo al Champignon', CAST(9.00 AS Decimal(5, 2)), 3)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (402, N'Lomo a la Pimienta', CAST(8.00 AS Decimal(5, 2)), 4)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (403, N'Lomo al Marsalla', CAST(8.00 AS Decimal(5, 2)), 4)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (404, N'Lomo al Champignon', CAST(9.00 AS Decimal(5, 2)), 4)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (405, N'Carre con Cerezas', CAST(13.00 AS Decimal(5, 2)), 4)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (406, N'Lomo Strogonoff', CAST(12.00 AS Decimal(5, 2)), 4)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (502, N'Fetuccini', CAST(6.00 AS Decimal(5, 2)), 5)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (503, N'Tagliatteli', CAST(7.00 AS Decimal(5, 2)), 5)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (504, N'Ravioles', CAST(6.00 AS Decimal(5, 2)), 5)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (505, N'Fuccile', CAST(7.00 AS Decimal(5, 2)), 5)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (506, N'Sorrentinos', CAST(7.00 AS Decimal(5, 2)), 5)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (600, N'Frutillas con Crema', CAST(4.50 AS Decimal(5, 2)), 6)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (601, N'Tiramisu', CAST(6.00 AS Decimal(5, 2)), 6)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (602, N'Banana Split', CAST(8.00 AS Decimal(5, 2)), 6)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (603, N'Macedonia de Frutas', CAST(3.50 AS Decimal(5, 2)), 6)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (604, N'Peras al Borgo¤a', CAST(9.00 AS Decimal(5, 2)), 6)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (700, N'Helado tres sabores', CAST(6.00 AS Decimal(5, 2)), 7)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (701, N'Almendrado', CAST(6.00 AS Decimal(5, 2)), 7)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (702, N'Charlotte', CAST(7.00 AS Decimal(5, 2)), 7)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (703, N'Copa Melba', CAST(9.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (704, N'Copa Falfala', CAST(15.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (800, N'Bianchi Chablis ', CAST(6.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (801, N'Colon Riesling', CAST(9.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (802, N'Suter Etiqueta Marron', CAST(12.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (803, N'Chateau Monchenot', CAST(15.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (805, N'Mont Fleuri', CAST(9.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (806, N'Chateau Vieux', CAST(12.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (807, N'San Felipe', CAST(7.00 AS Decimal(5, 2)), 8)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (900, N'Bianchi Borgo¤a', CAST(6.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (901, N'Clos du Moulin', CAST(10.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (902, N'Comte du Valmont ', CAST(12.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (903, N'Chateau Monchenot', CAST(15.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (904, N'San Felipe', CAST(7.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (905, N'Vintage', CAST(10.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (906, N'Armaneuse', CAST(15.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (907, N'Flitchman', CAST(14.00 AS Decimal(5, 2)), 9)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1000, N'Gancia', CAST(3.00 AS Decimal(5, 2)), 10)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1001, N'Tia Maria', CAST(4.00 AS Decimal(5, 2)), 10)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1002, N'Contreau', CAST(4.00 AS Decimal(5, 2)), 10)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1003, N'Jonny Walker Black', CAST(7.00 AS Decimal(5, 2)), 10)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1004, N'Courvosier Napoleon', CAST(8.00 AS Decimal(5, 2)), 10)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1005, N'Hennesey V.S.O.P', CAST(15.00 AS Decimal(5, 2)), 10)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1108, N'Cafe', CAST(1.50 AS Decimal(5, 2)), 11)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1121, N'Te / Te digestivo', CAST(1.00 AS Decimal(5, 2)), 11)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1133, N'Capuccino', CAST(2.50 AS Decimal(5, 2)), 11)
INSERT [Platos] ([IdPlato], [descripcion], [precio], [IdRubro]) VALUES (1180, N'Cortado', CAST(1.50 AS Decimal(5, 2)), 11)
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (116, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (116, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA700000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (201, 10, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (202, 10, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (205, 10, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (206, 20, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (207, 20, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (208, 20, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (209, 10, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (210, 10, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (211, 20, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (212, 10, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (213, 20, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (214, 20, CAST(6.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (215, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (215, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA700000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (217, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (217, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA700000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (218, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (218, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA700000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (219, 20, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (219, 20, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA700000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (220, 20, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (222, 20, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (230, 30, CAST(0.063 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (230, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (232, 50, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (232, 50, CAST(0.000 AS Decimal(6, 3)), CAST(0x00009B8E00000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (232, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (232, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009B8400000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (233, 30, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (233, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (234, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (234, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009B8E00000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (234, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (234, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA300000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (235, 30, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (235, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (236, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (236, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (237, 30, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (237, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (238, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (238, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009B8A00000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (238, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (238, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA300000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (239, 50, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (239, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (239, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA300000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (241, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (241, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (242, 30, CAST(0.083 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (242, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (243, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (243, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (244, 30, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (244, 30, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BC500000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (244, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (245, 30, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (245, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (246, 50, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (246, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (246, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA300000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (247, 50, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (247, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (247, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA300000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (248, 30, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (248, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (251, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (251, 10, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA900000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (251, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (252, 30, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (252, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (253, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (253, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BC500000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (253, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (254, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (254, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BC500000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (254, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (255, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (255, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (256, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (256, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (257, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (257, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (258, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (258, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA900000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (258, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (258, 50, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA900000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (265, 50, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (265, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (265, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BA300000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (267, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (267, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BC500000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (267, 60, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (267, 60, CAST(0.000 AS Decimal(6, 3)), CAST(0x00009BC500000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (268, 50, CAST(0.083 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (268, 50, CAST(0.083 AS Decimal(6, 3)), CAST(0x00009B8A00000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (268, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (268, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BDE00000000 AS DateTime))
GO
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (269, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (269, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009BC500000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (269, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (269, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x00009B8A00000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (270, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (270, 60, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (271, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (271, 60, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (272, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (272, 60, CAST(0.000 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (273, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (273, 60, CAST(0.020 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (274, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (274, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (275, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (275, 60, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (276, 40, CAST(0.001 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (276, 60, CAST(0.010 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (277, 50, CAST(0.083 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [ProIng] ([IdIngrediente], [IdProveedor], [factor], [fechComp]) VALUES (277, 60, CAST(0.083 AS Decimal(6, 3)), CAST(0x0000000000000000 AS DateTime))
INSERT [Proveedores] ([IdProveedor], [razsoc], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (10, N'La Rural S.A. ', N'Rivadavia', 1310, 1, N'G', 1141)
INSERT [Proveedores] ([IdProveedor], [razsoc], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (20, N'San Ignacio ', N'Ramirez ', 836, 0, N'', 1340)
INSERT [Proveedores] ([IdProveedor], [razsoc], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (30, N'Frig. Peualla ', N'Andrade ', 1827, 5, N'T', 1321)
INSERT [Proveedores] ([IdProveedor], [razsoc], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (40, N'Santander SRL ', N'Arce ', 245, 0, N' ', 1040)
INSERT [Proveedores] ([IdProveedor], [razsoc], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (50, N'Las Marias ', N'Zagala ', 463, 10, N'H', 1418)
INSERT [Proveedores] ([IdProveedor], [razsoc], [calle], [numero], [piso], [departamento], [IdCodPos]) VALUES (60, N'Granja Amor ', N'Amarante ', 103, 0, N' ', 1512)
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (1, N'Entradas')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (2, N'Pescados')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (3, N'Carnes Blancas')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (4, N'Carnes Rojas')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (5, N'Pastas Caseras')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (6, N'Postres')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (7, N'Helados')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (8, N'Vinos Blancos')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (9, N'Vinos Tintos')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (10, N'Aperitivos y Licores')
INSERT [Rubros] ([IdRubro], [descripcion]) VALUES (11, N'Cafeteria')
INSERT [Sectores] ([IdSector], [descripcion]) VALUES (1, N'Salon Azul')
INSERT [Sectores] ([IdSector], [descripcion]) VALUES (2, N'Salon Central')
INSERT [Sectores] ([IdSector], [descripcion]) VALUES (3, N'Salon Madera')
INSERT [Sectores] ([IdSector], [descripcion]) VALUES (4, N'Sala de las Cortinas')
INSERT [Sectores] ([IdSector], [descripcion]) VALUES (5, N'Reservados')
INSERT [TelefonoMozo] ([IdTelefono], [IdMozo], [codArea], [central], [numero], [celular]) VALUES (1, 6, 11, 4438, 4471, 0)
INSERT [TelefonoMozo] ([IdTelefono], [IdMozo], [codArea], [central], [numero], [celular]) VALUES (2, 3, 11, 4237, 9879, 15)
INSERT [TelefonoMozo] ([IdTelefono], [IdMozo], [codArea], [central], [numero], [celular]) VALUES (3, 4, 11, 5411, 3343, 0)
INSERT [TelefonoMozo] ([IdTelefono], [IdMozo], [codArea], [central], [numero], [celular]) VALUES (4, 5, 11, 4432, 9876, 15)
INSERT [TelefonoMozo] ([IdTelefono], [IdMozo], [codArea], [central], [numero], [celular]) VALUES (5, 3, 11, 4832, 1808, 0)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (1, 10, 64, 34, 2231)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (2, 10, 64, 34, 2232)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (3, 20, 1, 342, 2136)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (4, 20, 1, 342, 6771)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (5, 30, 1, 540, 2536)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (6, 40, 1, 977, 4563)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (7, 40, 1, 977, 7865)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (8, 40, 1, 977, 2784)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (9, 50, 1, 442, 2456)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (10, 60, 1, 332, 9398)
INSERT [TelefonoProveedor] ([IdTelefono], [IdProveedor], [codArea], [central], [numero]) VALUES (11, 60, 1, 332, 9785)
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (1, N'Caja X 6')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (2, N'Caja X 12')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (3, N'Caja X 24')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (4, N'Caja X 48')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (5, N'Bolsa 5 Krg')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (6, N'Bolsa 10 Krg')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (7, N'Bolsa 1 Krg')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (8, N'Paquete 1 Krg')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (9, N'Litro')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (10, N'Kilogramo')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (11, N'Gramo')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (12, N'Cent. Cub.')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (13, N'Botella')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (14, N'Lata')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (15, N'Cajon X 20 Kgs')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (16, N'Unidad')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (17, N'Docena')
INSERT [Unidades] ([IdUnidad], [descripcion]) VALUES (18, N'Lata X 5 Lts.')
ALTER TABLE [Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Mesas] FOREIGN KEY([IdMesa])
REFERENCES [Mesas] ([IdMesa])
GO
ALTER TABLE [Facturas] CHECK CONSTRAINT [FK_Facturas_Mesas]
GO
ALTER TABLE [Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Mozos] FOREIGN KEY([IdMozo])
REFERENCES [Mozos] ([IdMozo])
GO
ALTER TABLE [Facturas] CHECK CONSTRAINT [FK_Facturas_Mozos]
GO
ALTER TABLE [Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Ingrediente_Unidad_De_Compra] FOREIGN KEY([cUniCompra])
REFERENCES [Unidades] ([IdUnidad])
GO
ALTER TABLE [Ingredientes] CHECK CONSTRAINT [FK_Ingrediente_Unidad_De_Compra]
GO
ALTER TABLE [Ingredientes]  WITH CHECK ADD  CONSTRAINT [FK_Ingrediente_Unidad_De_Uso] FOREIGN KEY([cUniUso])
REFERENCES [Unidades] ([IdUnidad])
GO
ALTER TABLE [Ingredientes] CHECK CONSTRAINT [FK_Ingrediente_Unidad_De_Uso]
GO
ALTER TABLE [ItemsFactura]  WITH CHECK ADD  CONSTRAINT [FK_ItemsFactura_Facturas] FOREIGN KEY([NroFactura])
REFERENCES [Facturas] ([NroFactura])
GO
ALTER TABLE [ItemsFactura] CHECK CONSTRAINT [FK_ItemsFactura_Facturas]
GO
ALTER TABLE [ItemsFactura]  WITH CHECK ADD  CONSTRAINT [FK_ItemsFactura_Platos] FOREIGN KEY([IdPlato])
REFERENCES [Platos] ([IdPlato])
GO
ALTER TABLE [ItemsFactura] CHECK CONSTRAINT [FK_ItemsFactura_Platos]
GO
ALTER TABLE [Mesas]  WITH CHECK ADD  CONSTRAINT [FK_Mesas_Sectores] FOREIGN KEY([IdSector])
REFERENCES [Sectores] ([IdSector])
GO
ALTER TABLE [Mesas] CHECK CONSTRAINT [FK_Mesas_Sectores]
GO
ALTER TABLE [Mozos]  WITH CHECK ADD  CONSTRAINT [FK_Mozos_Localidades] FOREIGN KEY([IdCodPos])
REFERENCES [Localidades] ([IdCodpos])
GO
ALTER TABLE [Mozos] CHECK CONSTRAINT [FK_Mozos_Localidades]
GO
ALTER TABLE [PlaIng]  WITH CHECK ADD  CONSTRAINT [FK_PlaIng_Ingredientes] FOREIGN KEY([IdIngrediente])
REFERENCES [Ingredientes] ([IdIngrediente])
GO
ALTER TABLE [PlaIng] CHECK CONSTRAINT [FK_PlaIng_Ingredientes]
GO
ALTER TABLE [PlaIng]  WITH CHECK ADD  CONSTRAINT [FK_PlaIng_Platos] FOREIGN KEY([IdPlato])
REFERENCES [Platos] ([IdPlato])
GO
ALTER TABLE [PlaIng] CHECK CONSTRAINT [FK_PlaIng_Platos]
GO
ALTER TABLE [Platos]  WITH CHECK ADD  CONSTRAINT [FK_Platos_Rubros] FOREIGN KEY([IdRubro])
REFERENCES [Rubros] ([IdRubro])
GO
ALTER TABLE [Platos] CHECK CONSTRAINT [FK_Platos_Rubros]
GO
ALTER TABLE [ProIng]  WITH CHECK ADD  CONSTRAINT [FK_ProIng_Ingredientes] FOREIGN KEY([IdIngrediente])
REFERENCES [Ingredientes] ([IdIngrediente])
GO
ALTER TABLE [ProIng] CHECK CONSTRAINT [FK_ProIng_Ingredientes]
GO
ALTER TABLE [ProIng]  WITH CHECK ADD  CONSTRAINT [FK_ProIng_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [Proveedores] ([IdProveedor])
GO
ALTER TABLE [ProIng] CHECK CONSTRAINT [FK_ProIng_Proveedores]
GO
ALTER TABLE [Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Localidades] FOREIGN KEY([IdCodPos])
REFERENCES [Localidades] ([IdCodpos])
GO
ALTER TABLE [Proveedores] CHECK CONSTRAINT [FK_Proveedores_Localidades]
GO
ALTER TABLE [TelefonoMozo]  WITH CHECK ADD  CONSTRAINT [FK_TelefonoMozo_Mozos] FOREIGN KEY([IdMozo])
REFERENCES [Mozos] ([IdMozo])
GO
ALTER TABLE [TelefonoMozo] CHECK CONSTRAINT [FK_TelefonoMozo_Mozos]
GO
ALTER TABLE [TelefonoProveedor]  WITH CHECK ADD  CONSTRAINT [FK_TelefonoProveedor_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [Proveedores] ([IdProveedor])
GO
ALTER TABLE [TelefonoProveedor] CHECK CONSTRAINT [FK_TelefonoProveedor_Proveedores]
GO

