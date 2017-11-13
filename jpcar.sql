CREATE DATABASE JPCC2
GO
USE JPCC2
GO

/****** Object:  Table [dbo].[Brands]    Script Date: 07/13/2017 02:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'TOY', N'Toyota', N'toyota.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'LEX', N'Lexus', N'lexus.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'HON', N'Honda', N'honda.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'ACU', N'Acura', N'acura.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'NIS', N'Nissan', N'nissan.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'INF', N'Infiniti', N'infiniti.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'SUB', N'Subaru', N'subaru.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'MAZ', N'Mazda', N'mazda.png')
INSERT [dbo].[Brands] ([Id], [Name], [Logo]) VALUES (N'MIT', N'Mitsubishi', N'mitsubishi.png')

/****** Object:  Table [dbo].[Categories]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Car')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Sports Car')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Environmental Car')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Minivan')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Crossover & SUV')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Pickup truck')

SET IDENTITY_INSERT [dbo].[Categories] OFF

/****** Object:  Table [dbo].[Products]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Available] [bit] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
	[Latest] [bit] NOT NULL,
	[Views] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10001, N'Toyota Yaris', N'10001.png', 1,15500, N's', 1, N'TOY',1345, 0.1, 0, 3516)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10002, N'Toyota Corolla', N'10002.png', 1,18500, N's', 1, N'TOY',3541, 0, 0, 8478)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10003, N'Toyota Camry', N'10003.png', 1,24000, N's', 1, N'TOY',5351, 0, 0, 9516)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10004, N'Toyota Avalon', N'10004.png', 1,32000, N's', 1, N'TOY',1743, 0, 0, 1564)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10005, N'Toyota 86', N'10005.png', 1,30000, N's', 2, N'TOY',6731, 0, 0, 4234)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10006, N'Toyota Sienna', N'10006.png', 1,40000, N's', 4, N'TOY',7821, 0, 0, 4651)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10007, N'Toyota Tacoma', N'10007.png', 1,35000, N's', 6, N'TOY',5131, 0, 0, 7867)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10008, N'Toyota Tundra', N'10008.png', 1,45000, N's', 6, N'TOY',9551, 0, 0, 7839)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10009, N'Toyota CH-R', N'10009.png', 1,30000, N's', 5, N'TOY',1351, 0, 0, 3456)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Available], [UnitPrice], [Description], [CategoryId], [BrandId],[Quantity], [Discount], [Latest], [Views]) VALUES (10010, N'Toyota RAV4', N'10009.png', 1,32000, N's', 5, N'TOY',9347, 0, 0, 8464)

SET IDENTITY_INSERT [dbo].[Products] OFF


/****** Object:  Table [dbo].[Customers]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ALFKI', N'iloveyou', N'Maria Anders', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ANATR', N'iloveyou', N'Ana Trujillo', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ANTON', N'iloveyou', N'Antonio Moreno', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'AROUT', N'iloveyou', N'Thomas Hardy', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BERGS', N'iloveyou', N'Christina Berglund', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BLAUS', N'iloveyou', N'Hanna Moos', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BLONP', N'iloveyou', N'Frédérique Citeaux', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BOLID', N'iloveyou', N'Martín Sommer', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BONAP', N'iloveyou', N'Laurence Lebihan', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BOTTM', N'iloveyou', N'Elizabeth Lincoln', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BSBEV', N'iloveyou', N'Victoria Ashworth', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CACTU', N'iloveyou', N'Patricio Simpson', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CENTC', N'iloveyou', N'Francisco Chang', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CHOPS', N'iloveyou', N'Yang Wang', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'COMMI', N'iloveyou', N'Pedro Afonso', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CONSH', N'iloveyou', N'Elizabeth Brown', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'DRACD', N'iloveyou', N'Sven Ottlieb', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'DUMON', N'iloveyou', N'Janine Labrune', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'EASTC', N'iloveyou', N'Ann Devon', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ERNSH', N'iloveyou', N'Roland Mendel', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FAMIA', N'iloveyou', N'Aria Cruz', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FISSA', N'iloveyou', N'Diego Roel', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FOLIG', N'iloveyou', N'Martine Rancé', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FOLKO', N'iloveyou', N'Maria Larsson', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FRANK', N'iloveyou', N'Peter Franken', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FRANR', N'iloveyou', N'Carine Schmitt', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FRANS', N'iloveyou', N'Paolo Accorti', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FURIB', N'iloveyou', N'Lino Rodriguez', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GALED', N'iloveyou', N'Eduardo Saavedra', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GODOS', N'iloveyou', N'José Pedro Freyre', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GOURL', N'iloveyou', N'André Fonseca', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GREAL', N'iloveyou', N'Howard Snyder', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GROSR', N'iloveyou', N'Manuel Pereira', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HANAR', N'iloveyou', N'Mario Pontes', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HILAA', N'iloveyou', N'Carlos Hernández', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HUNGC', N'iloveyou', N'Yoshi Latimer', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HUNGO', N'iloveyou', N'Patricia McKenna', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ISLAT', N'iloveyou', N'Helen Bennett', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'KOENE', N'iloveyou', N'Philip Cramer', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LACOR', N'iloveyou', N'Daniel Tonini', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LAMAI', N'iloveyou', N'Annette Roulet', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LAUGB', N'iloveyou', N'Yoshi Tannamuri', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LAZYK', N'iloveyou', N'John Steel', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LEHMS', N'iloveyou', N'Renate Messner', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LETSS', N'iloveyou', N'Jaime Yorres', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LILAS', N'iloveyou', N'Carlos González', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LINOD', N'iloveyou', N'Felipe Izquierdo', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LONEP', N'iloveyou', N'Fran Wilson', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MAGAA', N'iloveyou', N'Giovanni Rovelli', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MAISD', N'iloveyou', N'Catherine Dewey', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MEREP', N'iloveyou', N'Jean Fresnière', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MORGK', N'iloveyou', N'Alexander Feuer', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'NORTS', N'iloveyou', N'Simon Crowther', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'OCEAN', N'iloveyou', N'Yvonne Moncada', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'OLDWO', N'iloveyou', N'Rene Phillips', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'OTTIK', N'iloveyou', N'Henriette Pfalzheim', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PARIS', N'iloveyou', N'Marie Bertrand', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PERIC', N'iloveyou', N'Guillermo Fernández', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PICCO', N'iloveyou', N'Georg Pipps', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PRINI', N'iloveyou', N'Isabel de Castro', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'QUEDE', N'iloveyou', N'Bernardo Batista', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'QUEEN', N'iloveyou', N'Lúcia Carvalho', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'QUICK', N'iloveyou', N'Horst Kloss', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RANCH', N'iloveyou', N'Sergio Gutiérrez', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RATTC', N'iloveyou', N'Paula Wilson', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'REGGC', N'iloveyou', N'Maurizio Moroni', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RICAR', N'iloveyou', N'Janete Limeira', N'thucctin@gmail.com', N'User.jpg',0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RICSU', N'iloveyou', N'Michael Holz', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ROMEY', N'iloveyou', N'Alejandra Camino', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SANTG', N'iloveyou', N'Jonas Bergulfsen', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SAVEA', N'iloveyou', N'Jose Pavarotti', N'thucctin@gmail.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SEVES', N'iloveyou', N'Hari Kumar', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SIMOB', N'iloveyou', N'Jytte Petersen', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SPECD', N'iloveyou', N'Dominique Perrier', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SPLIR', N'iloveyou', N'Art Braunschweiger', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SUPRD', N'iloveyou', N'Pascale Cartrain', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'THEBI', N'iloveyou', N'Liz Nixon', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'THECR', N'iloveyou', N'Liu Wong', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TOMSP', N'iloveyou', N'Karin Josephs', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TORTU', N'iloveyou', N'Miguel Angel Paolino', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TRADH', N'iloveyou', N'Anabela Domingues', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TRAIH', N'iloveyou', N'Helvetius Nagy', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'VAFFE', N'iloveyou', N'Palle Ibsen', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'VICTE', N'iloveyou', N'Mary Saveley', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'VINET', N'iloveyou', N'Paul Henriot', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WANDK', N'iloveyou', N'Rita Müller', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WARTH', N'iloveyou', N'Pirkko Koskitalo', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WELLI', N'iloveyou', N'Paula Parente', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WHITC', N'iloveyou', N'Karl Jablonski', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WILMK', N'iloveyou', N'Matti Karttunen', N'thucctin@gmail.com', N'User.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WOLZA', N'iloveyou', N'Zbyszek Piestrzeniewicz', N'thucctin@gmail.com', N'User.jpg', 1)


/****** Object:  Table [dbo].[OrderDetails]   
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[OrderDetails] ON
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100001, 10001, 10001, 24000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100002, 10001, 10004, 30000, 1, 0.2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100003, 10002, 10002, 20000, 1, 0.1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100004, 10003, 10007, 30000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100005, 10004, 10009, 26000, 1, 0.2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100006, 10004, 10003, 25000, 1, 0.03)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100007, 10005, 10002, 21000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100008, 10006, 10003, 17000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100009, 10007, 10006, 29000, 1, 0.1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100010, 10008, 10008, 32000, 1, 0.12)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100011, 10008, 10005, 50000, 1, 0.05)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100012, 10009, 10002, 51000, 1, 0.1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100013, 10010, 10003, 40000, 1, 0.04)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF

/****** Object:  Table [dbo].[Orders]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[RequireDate] [datetime] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10001, N'VINET', CAST(0x000089B000000000 AS DateTime), CAST(0x000089CC00000000 AS DateTime), N'Roger Federer', N'59 rue de Abbaye',2)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10002, N'TOMSP', CAST(0x000089B100000000 AS DateTime), CAST(0x000089DB00000000 AS DateTime), N'Andy Murray', N'Luisenstr. 48',1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10003, N'HANAR', CAST(0x000089B400000000 AS DateTime), CAST(0x000089D000000000 AS DateTime), N'Roger Federer', N'Rua do Paço, 67',1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10004, N'VICTE', CAST(0x000089B400000000 AS DateTime), CAST(0x000089D000000000 AS DateTime), N'Rafael Nadal', N'2, rue du Commerce',2)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10005, N'SUPRD', CAST(0x000089B500000000 AS DateTime), CAST(0x000089D100000000 AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255',1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10006, N'HANAR', CAST(0x000089B600000000 AS DateTime), CAST(0x000089C400000000 AS DateTime), N'Andy Murray', N'Rua do Paço, 67',1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10007, N'CHOPS', CAST(0x000089B700000000 AS DateTime), CAST(0x000089D300000000 AS DateTime), N'Roger Federer', N'Hauptstr. 31',1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10008, N'RICSU', CAST(0x000089B800000000 AS DateTime), CAST(0x000089D400000000 AS DateTime), N'Andy Murray', N'Starenweg 5',2)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10009, N'WELLI', CAST(0x000089BB00000000 AS DateTime), CAST(0x000089D700000000 AS DateTime), N'Roger Federer', N'Rua do Mercado, 12',1)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Amount]) VALUES (10010, N'ERNSH', CAST(0x000089BD00000000 AS DateTime), CAST(0x000089D900000000 AS DateTime), N'Roger Federer', N'Kirchgasse 6',1)

SET IDENTITY_INSERT [dbo].[Orders] OFF

/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 07/13/2017 02:11:14 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Products]    Script Date: 07/13/2017 02:11:14 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 07/13/2017 02:11:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
****///
/****** Object:  ForeignKey [FK_HangHoa_Loai1]    Script Date: 07/13/2017 02:11:14 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_Loai1] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_HangHoa_Loai1]
GO
/****** Object:  ForeignKey [FK_Products_Suppliers]    Script Date: 07/13/2017 02:11:14 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO

