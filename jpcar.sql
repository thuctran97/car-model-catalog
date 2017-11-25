CREATE DATABASE JPCC
GO
USE JPCC
GO


/****** Object:  Table [dbo].[Brands]    ******/
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
	[StartingPrice] [float] NOT NULL,
	[Mileage] [float] NOT NULL, 
	[Description] [nvarchar](2000) NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [nvarchar](50) NOT NULL,
	[Code] [nvarchar] (20) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10001, N'Toyota Yaris', N'10001.png',15635,33, N'https://www.toyota.com/yaris/',1, N'TOY', N'yaris')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10002, N'Toyota Corolla', N'10002.png',18550,32, N'https://www.toyota.com/corolla/',1, N'TOY',N'corolla')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10003, N'Toyota Camry', N'10003.png',23498,35, N'https://www.toyota.com/camry/',1, N'TOY',N'camry')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10004, N'Toyota Avalon', N'10004.png',33500,26, N'https://www.toyota.com/avalon/',1, N'TOY',N'avalon')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10005, N'Toyota 86', N'10005.png',26255,25, N'https://www.toyota.com/86/',2, N'TOY',N'86')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10006, N'Toyota Sienna', N'10006.png',30750,23, N'https://www.toyota.com/sienna/ ',4, N'TOY',N'sienna')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10007, N'Toyota Tacoma', N'10007.png',25200,22, N'https://www.toyota.com/tacoma/',6, N'TOY',N'tacoma')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10008, N'Toyota Tundra', N'10008.png',31120,17, N'https://www.toyota.com/tundra/',6, N'TOY',N'tundra')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10009, N'Toyota CH-R', N'10009.png',22500,29, N'https://www.toyota.com/c-hr/',5, N'TOY',N'chr')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10010, N'Toyota RAV4', N'10010.png',24410,27, N'https://www.toyota.com/rav4/',5, N'TOY',N'rav4')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10011, N'Toyota Highlander', N'10011.png',31030,24, N'https://www.toyota.com/highlander/',5, N'TOY',N'highlander')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10012, N'Toyota 4Runner', N'10012.png',34410,19, N'https://www.toyota.com/4runner/',5, N'TOY',N'4runner')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10013, N'Toyota Sequoia', N'10013.png',48300,15, N'https://www.toyota.com/sequoia/',5, N'TOY',N'sequoia')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10014, N'Toyota Land Cruiser', N'10014.png',83665,16, N'https://www.toyota.com/landcruiser/',5, N'TOY',N'landcruiser')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10015, N'Toyota Camry Hybrid', N'10015.png',27800,52, N'https://www.toyota.com/camryhybrid/ ',3, N'TOY',N'camryhybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10016, N'Toyota Avalon Hybrid', N'10016.png',37500,40, N'https://www.toyota.com/avalonhybrid/',3, N'TOY',N'avalonhybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10017, N'Toyota RAV4 Hybrid', N'10017.png',27135,37, N'https://www.toyota.com/rav4hybrid/',3, N'TOY',N'rav4hybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10018, N'Toyota Highlander Hybrid', N'10018.png',36670,29, N'https://www.toyota.com/highlanderhybrid/',3, N'TOY',N'highlanderhybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10019, N'Toyota Prius Prime', N'10019.png',27100,94, N'https://www.toyota.com/priusprime/ ',3, N'TOY',N'priusprime')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10020, N'Toyota Prius', N'10020.png',23475,52, N'https://www.toyota.com/prius/',3, N'TOY',N'prius')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10021, N'Toyota Prius V', N'10021.png',20630,46, N'https://www.toyota.com/priusv/',3, N'TOY',N'priusv')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10022, N'Toyota Prius C', N'10022.png',26675,41, N'https://www.toyota.com/priusc/',3, N'TOY',N'priusc')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10023, N'Toyota Mirai (Hydrogen Fuel Cell) ', N'10023.png',57500,67, N'https://www.toyota.com/mirai/ ',3, N'TOY',N'mirai')



INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10024, N'Honda Civic', N'10024.png',18840,34, N'https://automobiles.honda.com/civic-sedan',1, N'HON',N'civicsedan')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10025, N'Honda Civic Coupe', N'10025.png',19250,33, N'https://automobiles.honda.com/civic-coupe',1, N'HON',N'civic-coupe')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10026, N'Honda Civic Hatchback', N'10026.png',19900,34, N'https://automobiles.honda.com/civic-hatchback',1, N'HON',N'civichatchback')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10027, N'Honda Civic Type R', N'10027.png',34100,25, N'https://automobiles.honda.com/civic-type-r',2, N'HON',N'civictyper')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10028, N'Honda Accord', N'10028.png',23570,34, N'https://automobiles.honda.com/accord-sedan',1, N'HON',N'accordsedan')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10029, N'Honda Accord Coupe', N'10029.png',24125,28, N'https://automobiles.honda.com/accord-coupe',1, N'HON',N'accordcoupe')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10030, N'Honda Accord Hybrid', N'10030.png',29605,48, N'https://automobiles.honda.com/accord-hybrid',3, N'HON',N'accordhybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10033, N'Honda Fit', N'10033.png',16190,33, N'https://automobiles.honda.com/fit',1, N'HON',N'fit')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10035, N'Honda HR-V', N'10035.png',19465,29, N'https://automobiles.honda.com/hr-v',5, N'HON',N'hrv')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10036, N'Honda CR-V', N'10036.png',24150,29, N'https://automobiles.honda.com/cr-v',5, N'HON',N'crv')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10037, N'Honda Pilot', N'10037.png',30745,23, N'https://automobiles.honda.com/pilot',5, N'HON',N'pilot')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10038, N'Honda Odyssey', N'10038.png',29990,24, N'https://automobiles.honda.com/odyssey',4, N'HON',N'odyssey')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10039, N'Honda Ridgeline', N'10039.png',29630,23, N'https://automobiles.honda.com/ridgeline',6, N'HON',N'ridgeline')





INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10052, N'Nissan Armada', N'10052.png',45600,17, N'https://www.nissanusa.com/suvs/armada',5, N'NIS',N'armada')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10053, N'Nissan Frontier', N'10053.png',18990,21, N'https://www.nissanusa.com/trucks/frontier',6, N'NIS',N'frontier')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10054, N'Nissan Titan', N'10054.png',29880,18, N'https://www.nissanusa.com/trucks/titan',6, N'NIS',N'titan')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10040, N'Nissan Versa', N'10040.png',11990,35, N'https://www.nissanusa.com/cars/versa-sedan',1, N'NIS',N'versasedan')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10041, N'Nissan Sentra', N'10041.png',16990,33, N'https://www.nissanusa.com/cars/sentra',1, N'NIS',N'sentra')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10042, N'Nissan Altima', N'10042.png',23140,33, N'https://www.nissanusa.com/cars/altima',1, N'NIS',N'altima')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10043, N'Nissan Maxima', N'10043.png',33020,26, N'https://www.nissanusa.com/cars/maxima',1, N'NIS',N'maxima')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10044, N'Nissan Leaf', N'10044.png',30680,107, N'https://www.nissanusa.com/electric-cars/leaf/',3, N'NIS',N'leaf')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10045, N'Nissan 370Z Coupe', N'10045.png',29990,23, N'https://www.nissanusa.com/sportscars/z-coupe',2, N'NIS',N'zcoupe')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10046, N'Nissan 370Z Roadster', N'10046.png',41820,22, N'https://www.nissanusa.com/sportscars/z-roadster',2, N'NIS',N'zroadster')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10047, N'Nissan GT-R', N'10047.png',99990,19, N'https://www.nissanusa.com/sportscars/gt-r',2, N'NIS',N'gtr')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10048, N'Nissan Juke', N'10048.png',20250,31, N'https://www.nissanusa.com/crossovers/juke',5, N'NIS',N'juke')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10049, N'Nissan Rogue', N'10049.png',24680,30, N'https://www.nissanusa.com/crossovers/rogue',5, N'NIS',N'rogue')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10050, N'Nissan Murano', N'10050.png',29770,25, N'https://www.nissanusa.com/crossovers/murano',5, N'NIS',N'murano')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10051, N'Nissan Pathfinder', N'10051.png',30790,24, N'https://www.nissanusa.com/suvs/pathfinder',5, N'NIS',N'pathfinder')



INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10058, N'Lexus GS', N'10058.png',46310,25, N'http://www.lexus.com/models/GS',1, N'LEX',N'GS')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10059, N'Lexus GS Hybrid', N'10059.png',63635,31, N'http://www.lexus.com/models/GS-hybrid',3, N'LEX',N'GShybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10060, N'Lexus LS', N'10060.png',72520,19, N'http://www.lexus.com/models/LS',1, N'LEX',N'LS')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10055, N'Lexus IS', N'10055.png',38210,22, N'http://www.lexus.com/models/IS',1, N'LEX',N'IS')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10056, N'Lexus ES', N'10056.png',38900,24, N'http://www.lexus.com/models/ES',1, N'LEX',N'ES')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10057, N'Lexus ES Hybrid', N'10057.png',41820,40, N'http://www.lexus.com/models/ES-hybrid',3, N'LEX',N'EShybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10061, N'Lexus NX', N'10061.png',35985,25, N'http://www.lexus.com/models/NX',5, N'LEX',N'NX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10062, N'Lexus NX Hybrid', N'10062.png',38335,31, N'http://www.lexus.com/models/NX-hybrid',3, N'LEX',N'NXhybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10063, N'Lexus RX', N'10063.png',43220,23, N'http://www.lexus.com/models/RX',5, N'LEX',N'RX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10064, N'Lexus RX Hybrid', N'10064.png',53035,30, N'http://www.lexus.com/models/RX-hybrid',3, N'LEX',N'RXhybrid')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10065, N'Lexus GX', N'10065.png',51855,16, N'http://www.lexus.com/models/GX',5, N'LEX',N'GX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10066, N'Lexus LX', N'10066.png',89980,15, N'http://www.lexus.com/models/LX',5, N'LEX',N'LX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10067, N'Lexus RC', N'10067.png',40155,22, N'http://www.lexus.com/models/RC',2, N'LEX',N'RC')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10068, N'Lexus LC', N'10068.png',92000,25, N'http://www.lexus.com/models/LC',2, N'LEX',N'LC')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10069, N'Lexus LC Hybrid', N'10069.png',96510,35, N'http://www.lexus.com/models/LC-hybrid',3, N'LEX',N'LChybrid')



INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10070, N'Acura ILX', N'10070.png',28100,29, N'https://www.acura.com/ilx',1, N'ACU',N'ILX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10071, N'Acura TLX', N'10071.png',33000,25, N'https://www.acura.com/tlx',1, N'ACU',N'TLX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10072, N'Acura RLX', N'10072.png',54900,23, N'https://www.acura.com/rlx',1, N'ACU',N'RLX')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10073, N'Acura RDX', N'10073.png',35800,23, N'https://www.acura.com/rdx',5, N'ACU',N'RDX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10074, N'Acura MDX', N'10074.png',44200,23, N'https://www.acura.com/mdx',5, N'ACU',N'MDX')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10075, N'Acura NSX', N'10075.png',156000,27, N'https://nsx.acura.com/explore/nsx',2, N'ACU',N'NSX')



INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10076, N'Infiniti Q50', N'10076.png',34200,23, N'https://www.infinitiusa.com/sedan/q50',1, N'INF',N'Q50')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10077, N'Infiniti Q70', N'10077.png',50300,19, N'https://www.infinitiusa.com/sedan/q70',1, N'INF',N'Q70')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10078, N'Infiniti Q60', N'10078.png',38980,22, N'https://www.infinitiusa.com/coupe/q60',1, N'INF',N'Q60')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10079, N'Infiniti QX30', N'10079.png',29950,27, N'https://www.infinitiusa.com/crossover/qx30',5, N'INF',N'QX30')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10080, N'Infiniti QX50', N'10080.png',34650,20, N'https://www.infinitiusa.com/crossover/qx50',5, N'INF',N'QX50')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10081, N'Infiniti QX60', N'10081.png',43300,22, N'https://www.infinitiusa.com/crossover/qx60',5, N'INF',N'QX60')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10082, N'Infiniti QX70', N'10082.png',45850,19, N'https://www.infinitiusa.com/crossover/qx70',5, N'INF',N'QX70')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10083, N'Infiniti QX80', N'10083.png',63850,16, N'https://www.infinitiusa.com/suv/qx80',5, N'INF',N'QX80')



INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10088, N'Subaru Outback', N'10088.png',25898,29, N'https://www.subaru.com/vehicles/outback/index.html',5, N'SUB',N'outback')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10089, N'Subaru BRZ', N'10089.png',25498,29, N'https://www.subaru.com/vehicles/brz/index.html',2, N'SUB',N'BRZ')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10090, N'Subaru WRX', N'10090.png',26998,24, N'https://www.subaru.com/vehicles/wrx/index.html',2, N'SUB',N'WRX')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10084, N'Subaru Impreza', N'10084.png',18495,33, N'https://www.subaru.com/vehicles/impreza/index.html',1, N'SUB',N'impreza')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10085, N'Subaru Legacy', N'10085.png',22195,30, N'https://www.subaru.com/vehicles/legacy/index.html',1, N'SUB',N'legacy')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10086, N'Subaru Crosstrek', N'10086.png',22795,29, N'https://www.subaru.com/vehicles/crosstrek/index.html',5, N'SUB',N'crosstrek')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10087, N'Subaru Forester', N'10087.png',21795,30, N'https://www.subaru.com/vehicles/forester/index.html',5, N'SUB',N'forester')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10095, N'Mazda CX-5', N'10095.png',24045,27, N'https://www.mazdausa.com/vehicles/cx-5',5, N'MAZ',N'CX5')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10096, N'Mazda CX-9', N'10096.png',32130,24, N'https://www.mazdausa.com/vehicles/cx-9',5, N'MAZ',N'CX9')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10097, N'Mazda MX5 Miata', N'10097.png',24915,29, N'https://www.mazdausa.com/vehicles/mx-5-miata',2, N'MAZ',N'MX5Miata')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10091, N'Mazda 3', N'10091.png',18095,32, N'https://www.mazdausa.com/vehicles/mazda3',1, N'MAZ',N'mazda3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10092, N'Mazda 3 Hatchback', N'10092.png',19345,31, N'https://www.mazdausa.com/vehicles/mazda3-hatchback',1, N'MAZ',N'mazda3hatchback')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10093, N'Mazda 6', N'10093.png',21945,29, N'https://www.mazdausa.com/vehicles/mazda6',1, N'MAZ',N'mazda6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10094, N'Mazda CX-3', N'10094.png',20110,30, N'https://www.mazdausa.com/vehicles/cx-3',5, N'MAZ',N'cx3')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10098, N'Mitsubishi Outlander', N'10098.png',23795,27, N'https://www.mitsubishicars.com/outlander/2018#vehicle-hero-area',5, N'MIT',N'outlander')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10099, N'Mitsubishi Outlander Sport', N'10099.png',20295,25, N'https://www.mitsubishicars.com/outlander-sport/2018#vehicle-hero-area',5, N'MIT',N'outlandersport')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10100, N'Mitsubishi Mirage', N'10100.png',13395,39, N'https://www.mitsubishicars.com/mirage/2018#vehicle-hero-area',1, N'MIT',N'mirage')

INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10101, N'Mitsubishi Lancer', N'10101.png',17795,28, N'https://www.mitsubishicars.com/lancer/2017',2, N'MIT',N'Lancer')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10102, N'Mitsubishi Lancer Evolution', N'10102.png',34495,25, N'https://www.mitsubishicars.com/lancer-evolution/2015',2, N'MIT',N'lancerevolution')
INSERT [dbo].[Products] ([Id], [Name], [Image], [StartingPrice],[Mileage], [Description], [CategoryId], [BrandId], [Code]) VALUES (10103, N'Mitsubishi Mirage G4', N'10103.png',14395,37, N'https://www.mitsubishicars.com/mirage-g4/2018#vehicle-hero-area',1, N'MIT',N'mirageg4')

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

