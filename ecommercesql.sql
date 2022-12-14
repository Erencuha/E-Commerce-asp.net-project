USE [ProjeEcommerce]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10.07.2022 11:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AKadi] [nvarchar](50) NULL,
	[Sfr] [nvarchar](50) NULL,
	[AMail] [nvarchar](50) NULL,
	[ATel] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[TelNo] [nvarchar](50) NULL,
	[Resim] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 10.07.2022 11:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KateID] [int] IDENTITY(1,1) NOT NULL,
	[KateAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesajlar]    Script Date: 10.07.2022 11:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesajlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Baslik] [nvarchar](50) NULL,
	[Mesaj] [nvarchar](500) NULL,
	[Yanıt] [nvarchar](500) NULL,
	[Okundu] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 10.07.2022 11:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[TcNo] [nvarchar](50) NULL,
	[KAdi] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Sfr] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[Dogrulama] [int] NULL,
	[Onay] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sepet]    Script Date: 10.07.2022 11:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Barkod] [nvarchar](50) NULL,
	[Adet] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Durum] [bit] NULL,
	[tarih] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sepett] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 10.07.2022 11:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunKateID] [int] NULL,
	[UMarka] [nvarchar](50) NULL,
	[UrunAdi] [nvarchar](50) NULL,
	[UFiyat] [float] NULL,
	[UKdv] [nvarchar](50) NULL,
	[ParaBrm] [nvarchar](50) NULL,
	[UStokID] [nvarchar](50) NULL,
	[UBarkod] [nvarchar](50) NOT NULL,
	[UStokAdet] [nvarchar](50) NULL,
	[UStokTur] [nvarchar](50) NULL,
	[UResim] [nvarchar](200) NULL,
	[KargoKg] [nvarchar](50) NULL,
	[Slider] [nvarchar](50) NULL,
 CONSTRAINT [PK_Urunlerr] PRIMARY KEY CLUSTERED 
(
	[UBarkod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([AKadi], [Sfr], [AMail], [ATel], [Ad], [Soyad], [TelNo], [Resim]) VALUES (N'Erencuha', N'123', N'weltmew', N'knlknlk', N'Eren', N'Çuha', N'05474713964', N'dgvsdgds')
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KateID], [KateAdi]) VALUES (4, N'Telefon')
INSERT [dbo].[Kategoriler] ([KateID], [KateAdi]) VALUES (5, N'Televizyon')
INSERT [dbo].[Kategoriler] ([KateID], [KateAdi]) VALUES (6, N'Akıllı Saatler')
INSERT [dbo].[Kategoriler] ([KateID], [KateAdi]) VALUES (7, N'Kulaklıklar')
INSERT [dbo].[Kategoriler] ([KateID], [KateAdi]) VALUES (28, N'ewrwerwer')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Mesajlar] ON 

INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (25, N'catmali@hotmail.com', N'Sipariş gecikmesi', N'siparişim hala gelmedi', N'ewtewte', 1)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (26, N'dsgsd', N'gdsg', N'sdgsdg', N'dsgdsgdsgfcfhdgfh', NULL)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (27, N'fatirasu18@gmail.com', N'dfgdfg', N'dfhdfhdfhdfhfdfdfdhfddddddddddddddddd', N'sawraewrwr', 1)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (28, N'fatirasu18@gmail.com', N'sadasf', N'safsaf', NULL, NULL)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (29, N'fatirasu18@gmail.com', N'sadasf', N'safsaf', N'merhabalar', 1)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (31, N'erencasper16@hotmail.com', N'Sipariş hakkında', N'dlmşsldmgşldsmgşlsdmglşsdg', N'dgdsgdsg', 1)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (32, N'erencasper16@hotmail.com', N'asdfasf', N'asfasfsaf', N'dvgsd', 1)
INSERT [dbo].[Mesajlar] ([id], [Email], [Baslik], [Mesaj], [Yanıt], [Okundu]) VALUES (30, N'fatirasu18@gmail.com', N'dsfasdas', N'fasfasf', N'ewrwer', 1)
SET IDENTITY_INSERT [dbo].[Mesajlar] OFF
GO
INSERT [dbo].[Musteriler] ([TcNo], [KAdi], [Ad], [Soyad], [Sfr], [Email], [Dogrulama], [Onay]) VALUES (N'1ewr', N'ewf', N'fewfdsf', N'dsfds', N'Wm+HxTLD0/M=', N'erencasper16@hotmail.com', 565152, 0)
INSERT [dbo].[Musteriler] ([TcNo], [KAdi], [Ad], [Soyad], [Sfr], [Email], [Dogrulama], [Onay]) VALUES (N'12398989', N'Eren123', N'Eren', N'Çuha', N'Wm+HxTLD0/M=', N'erencasper16@hotmail.com', 589875, 1)
INSERT [dbo].[Musteriler] ([TcNo], [KAdi], [Ad], [Soyad], [Sfr], [Email], [Dogrulama], [Onay]) VALUES (N'sdfsdg', N'dsgsdg', N'sdgsd', N'gdsgsd', N'Wm+HxTLD0/M=', N'fatirasu18@gmail.com', 494445, 1)
GO
SET IDENTITY_INSERT [dbo].[Sepet] ON 

INSERT [dbo].[Sepet] ([id], [Barkod], [Adet], [Email], [Durum], [tarih]) VALUES (18, N'TGH-123234', 4, N'fatirasu18@gmail.com', 1, N'Jul  6 2022  1:46PM')
INSERT [dbo].[Sepet] ([id], [Barkod], [Adet], [Email], [Durum], [tarih]) VALUES (24, N'grdflmdflmh', 4, N'fatirasu18@gmail.com', 0, N'Jul  7 2022 10:58AM')
INSERT [dbo].[Sepet] ([id], [Barkod], [Adet], [Email], [Durum], [tarih]) VALUES (25, N'grdflmdflmewrewh', 4, N'fatirasu18@gmail.com', 0, N'Jul  7 2022 10:59AM')
INSERT [dbo].[Sepet] ([id], [Barkod], [Adet], [Email], [Durum], [tarih]) VALUES (26, N'HY-124332425', 4, N'fatirasu18@gmail.com', 0, N'Jul  7 2022 11:22AM')
INSERT [dbo].[Sepet] ([id], [Barkod], [Adet], [Email], [Durum], [tarih]) VALUES (30, N'HY-124325', 1, N'erencasper16@hotmail.com', 0, N'Jul  7 2022  1:49PM')
SET IDENTITY_INSERT [dbo].[Sepet] OFF
GO
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (5, N'HP', N'Hp Tv500', 12000, N'26', N'TL', N'etgrg', N'grdflmdflmewrewh', N'12', N'Hazır', N'/AdminPanel/urunimg/07062022_230651_tv3.png', N'2', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (5, N'HP', N'Hp Tv300', 12000, N'26', N'TL', N'etgrg', N'grdflmdflmh', N'12', N'Hazır', N'/AdminPanel/urunimg/07062022_230642_tv2.png', N'2', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (5, N'LG', N'LG Tv 1200', 7000, N'18', N'TL', N'1244', N'HTL-34643', N'16', N'Hazır', N'/AdminPanel/urunimg/07062022_230452_t1.png', N'3', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (5, N'HP', N'Hp Tv600', 12000, N'26', N'TL', N'etgrg', N'HY-124325', N'12', N'Hazır', N'/AdminPanel/urunimg/07062022_230452_t1.png', N'2', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (5, N'HP', N'Hp Tv7600', 16000, N'26', N'TL', N'etgrg', N'HY-124332425', N'12', N'Hazır', N'/AdminPanel/urunimg/07062022_230719_tv5.png', N'2', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 11 Pro ', 13000, N'15', N'TL', N'1123', N'TGH-123213', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235307_90812462_.PNG', N'1', N'1')
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 11 Pro ', 12000, N'15', N'TL', N'1123', N'TGH-123234', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235336_560505370_.PNG', N'1', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 10 Pro ', 5000, N'15', N'TL', N'1123', N'TGH-1232343', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235246_iphone11-white-select-2019_GEO_EMEA.png', N'1', N'1')
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 11 Pro ', 15000, N'15', N'TL', N'1123', N'TGH-123432', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235324_364184424_.PNG', N'1', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 11 Pro ', 15000, N'15', N'TL', N'1123', N'TGH-12345346', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235330_393365792_.PNG', N'1', N'1')
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 11 Pro ', 15000, N'15', N'TL', N'1123', N'TGH-123asd', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235318_178953831_.PNG', N'1', NULL)
INSERT [dbo].[Urunler] ([UrunKateID], [UMarka], [UrunAdi], [UFiyat], [UKdv], [ParaBrm], [UStokID], [UBarkod], [UStokAdet], [UStokTur], [UResim], [KargoKg], [Slider]) VALUES (4, N'Xiaomi', N'Apple 11 Pro ', 15000, N'15', N'TL', N'1123', N'TGH-123gdfsg', N'12', N'Hazır', N'/AdminPanel/urunimg/07022022_235345_asd.jpg', N'1', NULL)
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([UrunKateID])
REFERENCES [dbo].[Kategoriler] ([KateID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
