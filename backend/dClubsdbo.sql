USE [DanceClubs]
GO
/****** Object:  Table [dbo].[dClubs]    Script Date: 5/4/2020 4:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dClubs](
	[ClubID] [int] IDENTITY(1,1) NOT NULL,
	[ClubName] [varchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[ContactPerson] [varchar](max) NULL,
	[Telephone] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_dClubs] PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dClubs] ON 

INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (1, N'Allegro', N'Novi Sad', N'Trg Marije Trandafil 14', N'Radovan Ostojic', N'060 600 30 30', N'office@allegrodance.info')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (2, N'Aurora', N'Beograd', N'Ustanicka 189', N'Marija Prelevic', N'011/288-17-76', N'pkaurora@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (3, N'Bolero', N'Požarevac', N'Cane Babovica 37', N'Milorad Ilic', N'063/261-876', N'pkboleropozarevac@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (4, N'Calypso', N'Beograd', N'Miloja Zakica 1/7', N'Dragana Labudovic', N'063/82 82 225', N'pkcalypso.dragana@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (5, N'Fiesta', N'Novi Sad', N'Geri Karolja 19', N'Mihajlo Živanovic', N'021/6302-612', N'pkfiesta@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (6, N'Dolls', N'Kragujevac', N'Kralja Aleksandra I K. 56', N'Jelena Bugarcic', N'062 334 132', N'dollsmia@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (7, N'Ronda', N'Sombor', N'Dalmatinska 8A', N'Lado Božic', N'061 14 56 886', N'plesniklubronda@ymail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (8, N'Spin', N'Beograd', N'Marka Tajčevića 1', N'Predrag Stojkovic', N'064 64 57 835', N'spindance@ptt.rs')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (9, N'Urban', N'Niš', N'Bulevar Nemanjića 80/16', N'Ivana Ðordevic', N'069 165 00 46', N'urbandancenis@yahoo.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (10, N'Vracar', N'Beograd', N'Sjenička 1', N'Dragan Radovanovic', N'011 245 51 71', N'vracardr@mts.rs')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (11, N'Royal', N'Požarevac', N'Požarevački Partizanski Odred', N'Daniel Romanovic', N'064 41 41 517', N'dacha2904@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (12, N'Luna', N'Čačak', N'Trg ustanka 1', N'Marija Lazarevic', N'032 / 224 730', N'marijaluna@open.telekom.rs')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (13, N'Krusevac', N'Kruševac', N'Adresa ćrodromska 81', N'Milan Nikolic', N'060 52 11 659', N'plesnistudioks@yahoo.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (15, N'Koloseum', N'Novi Beograd', N'Aleksinačkih rudara 22', N'Valentina Simonovic Vanja', N'064 16 47 630', N'vanjasim74@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (16, N'La Bomba', N'Novi Sad', N'Geri Karolja 78', N'Marina Živanovic', N'021/6569-612', N'pklabomba@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (17, N'Best', N'Beograd', N'Kružni Put Kijevo 21v', N'Branislava Radovanovic', N'635523289', N'bubarad70@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (42, N'Master Dance', N'Pancevo', N'Bul. Cara Lazara 49', N'Snezana Savic', N'45691235', N'masterdancens@hotmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (43, N'BeoDance', N'Beograd', N'Gospodar Jovanova 22', N'Nenad Jeftic', N'11328946', N'beodance@eunet.rs')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (45, N'Studio Five', N'Novi Sad', N'Narodnog Fronta 55a', N'Jasna Ðurickovic', N'6542398', N'jacafive@gmail.com')
INSERT [dbo].[dClubs] ([ClubID], [ClubName], [City], [Address], [ContactPerson], [Telephone], [Email]) VALUES (46, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[dClubs] OFF
GO
