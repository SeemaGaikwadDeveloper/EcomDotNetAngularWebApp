﻿USE [ECommerce]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 25-09-2022 17:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED 
(
	[CartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Ordered] [nvarchar](10) NOT NULL,
	[OrderedOn] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[OfferId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Discount] [int] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
	[PaymentId] [int] NOT NULL,
	[CreatedAt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[PaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Available] [nvarchar](50) NULL,
	[Reason] [nvarchar](max) NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PaymentMethodId] [int] NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[ShippingCharges] [int] NOT NULL,
	[AmountReduced] [int] NOT NULL,
	[AmountPaid] [int] NOT NULL,
	[CreatedAt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[SubCategory] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[OfferId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ImageName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Review] [nvarchar](max) NOT NULL,
	[CreatedAt] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25-09-2022 17:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Mobile] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CreatedAt] [nvarchar](max) NOT NULL,
	[ModifiedAt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([CartId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Carts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_PaymentMethods] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_PaymentMethods]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Offers] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([OfferId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Offers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_ProductCategories]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO


select * from Users

select * from ProductCategories

USE [ECommerce]
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (1, N'electronics', N'mobiles')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (2, N'furniture', N'chairs')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (3, N'furniture', N'tables')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (4, N'electronics', N'laptops')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (5, N'clothes', N'mens-tshirt')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (6, N'clothes', N'mens-pants')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (7, N'clothes', N'womens-tshirt')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (8, N'clothes', N'womens-pants')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (9, N'electronics', N'mouse')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (1, N'diwali dhamaka', 25)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (2, N'christmas sale', 15)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (3, N'ausgust special', 5)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (4, N'crazy shopping sale', 40)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (5, N'holi sale', 10)
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (1, N'Dell XPS 9500 15.6 inches UHD Laptop (10th Gen Intel Core i7-10750H/32GB/1TB SSD/Windows 10 Home Plus & MS Office/4GB NVIDIA1650 Ti Graphics), Silver, 1.83Kg', N'Processor:10th Generation Intel Core i7-10750H Processor (12MB Cache, up to 5GHz,6 cores). Memory & Storage:32 GB DDR4 at 2933 MHz, dual channel |1TB M.2 PCIe NVMe Solid State Drive. Graphics:NVIDIA GeForce GTX 1650 Ti 4GB GDDR6. Display: 15.6” UHD (3840 x 2400) InfinityEdge Touch Anti-Reflecitve 500-Nit Display | 100% Adobe RGB + 94% DCI-P | 93% Screen to body ratio | Eyesafe technology. Operating System: Windows 10 Home Plus Single Language & Microsoft Office Home and Student 2019. CNC machined aluminum in platinum silver with carbon fiber composite palm rest in black Edge-to-edge Corning Gorilla Glass 6 on touch panel, Keyboard & Battery:Backlit chiclet keyboard | 6-Cell Lithium Ion Battery |6 cell 86 Whr|13 hrs battery life. I/O ports:Two Thunderbolt 3 (USB Type-C) ports with Power Delivery |1x USB-C 3.1 with power delivery & Display Port | Full size SD card reader v6.0 |1x3.5 mm headphone/microphone combo jack. Others:Killer Wi-Fi 6 AX1650 (2x2) | Bluetooth 5.1 | Finger Print Reader. 1 year Premium Support Plus | McAfee Live Safe 12 month Subscription.', 4, 1, 302000, 560, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (2, N'Lenovo IdeaPad Slim 3 Intel Core i3 11th Gen 15.6 (39.62cm) FHD Thin & Light Laptop (8GB/512GB SDD/Windows 11/Office 2021/2Yr Warranty/3months Game Pass/Arctic Grey/1.65Kg), 82H802FJIN', N'Processor: 11th Gen Intel Core i3-1115G4 | Speed: 3.0 GHz (Base) - 4.1 GHz (Max) | 2 Cores | 6MB Cache. OS: Pre-Loaded Windows 11 Home with Lifetime Validity. Pre-Installed: MS Office Home and Student 2021. Memory and Storage: 8GB RAM DDR4, Upgradable up to 12GB | 512 GB SSD. Graphics: Intel UHD Integrated Graphics. Display: 15.6'' FHD (1920x1080) | Brightness : 250nits | Anti-Glare. Design: 4 side narrow bezel | 1.99 cm Thin and 1.65 kg Light | Narrow Bezel. Battery Life: 3-Cell 45Wh | Upto 6 Hours | Rapid Charge (Up to 80% in 1 Hour). Camera (Built-in): 720p with Privacy Shutter | Fixed Focus | Integrated Dual Array Microphone. Audio: 2 x 1.5W Stereo Speakers | HD Audio | Dolby Audio. Smart Learning Features : Lenovo Aware | Whisper Voice | Eye Care. Ports: 2 USB 3.2 Gen1, 1 USB 2.0, Headphone/Mic combo jack, HDMI 1.4b, 4-in-1 media reader (MMC, SD, SDHC, SDXC). In the box: Laptop, Power Adapter and User Manual. Warranty: This genuine Lenovo laptop comes with 2 year onsite manufacturer warranty.', 4, 3, 65000, 120, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (3, N'ASUS ZenBook Duo 14 2021 Intel 14 inches FHD Dual-Screen Touch Business Laptop (8GB/512GB SSD/Iris Xe Graphics/Office 2019/Windows 10/Celestial Blue/1.62 Kg), UX482EA-KA501TS', N'Processor: 11th Gen Intel Core i5-1135G7, 8MB Cache, 2.4 GHz Base Speed, Up to 4.2 GHz Turbo Boost Speed, 4 cores, 8 Threads. Memory & Storage: 8GB LPDDR4X onboard 4266MHz RAM with | Storage: 512GB SSD M.2 NVMe PCIe 3.0. Graphics: Intel Iris Xᵉ Graphics. Display: Touch screen, 14.0-inch, FHD (1920 x 1080) 16:9, IPS-level Panel, Anti-glare display, LED Backlit, 400nits, sRGB: 100%, Pantone Validated, Screen-to-body ratio: 93 %, With stylus support. Additional Display: ScreenPad Plus (12.65 FHD 1920 x 515, Touch screen IPS-level Panel Support Stylus). Software Included: Pre-Install MS Office Home and Student 2019 with lifetime validity, McAfee With 1 year validity | Operating System: Pre-loaded Windows 10 Home with lifetime validity. Design & battery: NanoEdge bezels | Mangnesium-Aluminum Chassis and Lid | Thin and Light Laptop | Laptop weight: 1.62 kg | 70WHrs, 4-cell lithium-polymer battery | Up to 17 Hours battery life ;Note: Battery life depends on conditions of usage. Keyboard & Touchpad: Backlit Chiclet Keyboard | 1.4mm Key-travel | Precision Touchpad. I/O Port: 1x USB 3.2 Gen 1 Type-A, 2x Thunderbolt 4 supports display / power delivery, 1x HDMI 1.4, 1x 3.5mm Combo Audio Jack, 1x Micro SD card reader. Other: HD IR Webcam with Facial recognition Login support | Wi-Fi 6(802.11ax)+Bluetooth 5.0 (Dual band) 2*2 | Built-in speaker | Smart Amp Technology | Built-in array microphone | MIL-STD-810H standard Durability.', 4, 2, 130000, 766, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (4, N'2020 Apple MacBook Air Laptop: Apple M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Gold', N'All-Day Battery Life – Go longer than ever with up to 18 hours of battery life. Powerful Performance – Take on everything from professional-quality editing to action-packed gaming with ease. The Apple M1 chip with an 8-core CPU delivers up to 3.5x faster performance than the previous generation while using way less power. Superfast Memory – 8GB of unified memory makes your entire system speedy and responsive. That way it can support tasks like memory-hogging multitab browsing and opening a huge graphic file quickly and easily. Stunning Display – With a 13.3-inch/33.74 cm Retina display, images come alive with new levels of realism. Text is sharp and clear, and colors are more vibrant. Why Mac – Easy to learn. Easy to set up, Astoundingly powerful, Intuitive, Packed with apps to use right out of the box. Mac is designed to let you work, play, and create like never before. Simply Compatible – All your existing apps work, including Adobe Creative Cloud, Microsoft 365, and Google Drive, plus you can use your favorite iPhone and iPad apps directly on macOS, altogether you’ll have access to the biggest collection of apps ever for Mac, all available on the App Store. Easy to Learn – If you already have an iPhone, MacBook Air feels familiar from the moment you turn it on, and it works perfectly with all your Apple devices, use your iPad to extend the workspace of your Mac, answer texts and phone calls directly on your Mac, and more. Fanless Design – Your MacBook Air stays cool and runs quietly even while tackling intense workloads. AppleCare – Every Mac comes with a one-year limited warranty and up to 90 days of complimentary technical support. Get AppleCare+ to extend your coverage and reduce the stress and cost of unexpected repairs. Environmentally Friendly – MacBook Air is made with a 100% recycled aluminum enclosure and uses less energy for a smaller carbon footprint.', 4, 1, 93000, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (5, N'HP 247 G8 Laptop (Athlon P-3045B HD/ 14 inch(35.56 cms) /8GB RAM DDR4 /1TB HDD / W11 SL)One Year Warranty, Black, 67U77PA)', N'Processo: Athlon P-3045B HD (2.3 GHz base frequency, up to 3.2 GHz burst frequency). Memory: 8 GB DDR4-2400 RAM (1 x 8 GB)| Storage: 1 TB 5400 rpm SATA HDD. Display: 35.56 cm (14 in) diagonal, HD (1366 x 768), SVA, Anti-Glare WLED, 250 nits, eDP micro-edge, 45% NTSC. Operating System & Software: Pre-loaded Windows 11 Home with lifetime validity. Ports:(2) USB-A 3.2 Gen 1 (1) USB Type-C 3.2 Gen 1 (data transfer only) (1) HDMI 1.4b (cable sold separately) (1) RJ-45 (1) AC power port (1) Headphone/microphone combo jack.', 4, 1, 30000, 2340, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (6, N'OnePlus Nord CE 2 5G (Gray Mirror, 6GB RAM, 128GB Storage)', N'65W SUPERVOOC – Accelerated charge velocity shall rocket the 4500mAh battery to a day''s power in 15 minutes. Certified by TÜV Rheinland, one shall ''Charge & Play'' with absolute peace of mind. Mediatek Dimensity 900 – Powered by a 5G enabled, octa-core monster of a chipset that’s tad more powerful than previous CE, consider this the ''Best in class'' daily driver for entertainment with its ''dragon-slaying'' power efficiency, thermal control and support for Wi-Fi 6. 6.43 inch, 90Hz FHD+ AMOLED Display – Shielded by Corning Gorilla Glass 5, scroll, swipe, and enjoy all your entertainment effortlessly on this HDR10+ certified, OnePlus-worthy display. AI-infused Triple Camera – This amazing camera setup comprises of a 64MP main sensor, 119° wide-angle and a 16MP selfie shooter. Powered by inhouse algorithm, imaging in badly or unevenly lit environments shall become so much easier. All Flexible – The OnePlus Nord CE 2 is equipped with triple card slots, meaning you have the flexibility to go dual SIM, with an additional micro SD that allows for up to 1TB extendable storage. Also, this phone has a 3.5mm headphone jack. Designed by OnePlus – Coming in at 7.8mm thick, weighing 173g, this is THE slimmest OnePlus phone yet, since the 6T. OnePlus Quality – Powered by the most stable version of OxygenOS 11, based on Android 11, this device is easily futureproof, boasting 2 Years of Android version updates and 3 years of worth of security patches via OTA. In-display fingerprint sensor. Alexa Hands-Free capable – Download the Alexa app to use Alexa hands-free. Play music, make calls, hear news, open apps, navigate, and more, all using just your voice, while on-the-go.', 1, 5, 24000, 245, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (7, N'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', N'Processor: MediaTek Helio G25 Octa-core; Up to 2.0GHz clock speed. Camera: 13 MP Rear camera with AI portrait| 5 MP front camera. Display: 16.58 centimeters (6.53-inch) HD+ display with 720x1600 pixels and 20:9 aspect ratio. Battery: 5000 mAH large battery with 10W wired charger in-box. Memory, Storage & SIM: 2GB RAM | 32GB storage | Dual SIM (nano+nano) + Dedicated SD card slot. The Selfie camera allows easy and convenient access to your phone with AI face unlock. form_factor:Bar,operating_system:MIUI 12.', 1, 3, 7000, 1000, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (8, N'Samsung Galaxy S22 Ultra 5G (Phantom Black, 12GB, 512GB Storage) with No Cost EMI/Additional Exchange Offers', N'The first Galaxy S with embedded S Pen. Write comfortably like pen on paper, turn quick notes into legible text and use Air Actions to control your phone remotely. Improved latency in Samsung Notes makes every pen stroke feel as natural as ink on paper — and you can convert those hastily written ideas into legible text. 5G Ready powered by Galaxy’s first 4nm processor. Our fastest, most powerful chip ever. That means, a faster CPU and GPU compared to Galaxy S21 Ultra. It’s an epic leap for smartphone technology. The Dynamic AMOLED 2x display improves outdoor visibility with up to 1750 nits in peak brightness. And the 120Hz adaptive refresh rate keeps the scroll smooth, adjusting to what''s on screen for an optimized view. Our most advanced Pro-grade Camera yet, packing the power of a professional''s kit in one handheld device. Also lets you make your nights epic with Nightography: The sensor pulls in more light, the Super Clear Lens tones down lens flare, and fast-acting AI delivers near-instant intelligent processing. OS - Android 12. RAM - ‎12 GB. Product Dimensions - ‎0.9 x 7.8 x 16.3 cm; 228 Grams. Batteries - ‎1 Lithium Ion batteries required. (included). Item model number - ‎SM-S908EZKHINU. Connectivity technologies - ‎Bluetooth, Wi-Fi, USB. GPS - ‎True. Special features - Fast Charging Support, Wireless Charging. Display technology - ‎AMOLED. Other display features - ‎Wireless. Device interface - primary - ‎Touchscreen. Other camera features - ‎Rear, Front. Form factor - ‎Bar. Colour - ‎Phantom Black. Battery Power Rating - 5000. Whats in the box - Handset, Ejection Pin,Data Cable,Quick Start Guide. Manufacturer - Samsung India pvt Ltd. Country of Origin - ‎Vietnam. Item Weight - 228 g.', 1, 4, 120000, 344, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (9, N'Samsung Galaxy M33 5G (Emerald Brown, 6GB, 128GB Storage) | 5nm Processor | 6000mAh Battery | Voice Focus | Upto 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately', N'Exynos 1280 Octa Core 2.4GHz 5nm Processor with the 12 band support for a True 5G experience. 16.72 centimeters (6.6-inch) LCD Display, FHD+ resolution, 1080x2400 pixels protected by Gorilla Glass 5. Versatile Quad camera setup-50MP (F1.8)+ 5MP (F2.2/UW- 123 FOV) + 2MP (F2.4/Depth) + 2MP (F2.4/Macro) QuadCamera| 8MP (F1.8) Front Camera. Massive 6000 mAh Battery | Memory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 1TB| SIM 1 + SIM 2+ Micro SD. Latest Android v12.0, One UI 4 operating system.', 1, 5, 18000, 1200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (10, N'Apple iPhone 13 Pro Max (256GB) - Sierra Blue', N'17 cm (6.7-inch) Super Retina XDR display with ProMotion for a faster, more responsive feel. Cinematic mode adds shallow depth of field and shifts focus automatically in your videos. Pro camera system with new 12MP Telephoto, Wide and Ultra Wide cameras; LiDAR Scanner; 6x optical zoom range; macro photography; Photographic Styles, ProRes video, Smart HDR 4, Night mode, Apple ProRAW, 4K Dolby Vision HDR recording. 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording. A15 Bionic chip for lightning-fast performance. Up to 28 hours of video playback, the best battery life ever in an iPhone. Durable design with Ceramic Shield. Display - 6.7-inch (17 cm diagonal) Super Retina XDR display with ProMotion. Capacity - 128GB, 256GB, 512GB, 1TB. Splash, Water, and Dust Resistant - All-glass and surgical-grade stainless steel design, water and dust resistant (rated IP68). Camera and Video - Triple 12MP cameras with Portrait mode, Depth Control, Portrait Lighting, Smart HDR 3, and 4K Dolby Vision HDR video up to 60 fps. Front Camera - 12MP TrueDepth front camera with Portrait mode, Depth Control, Portrait Lighting, and Smart HDR 4. Power and Battery - Video playback:Up to 28 hours, Video playback (streamed):Up to 25 hours, Audio playback:Up to 95 hours, 20W adapter or higher (sold separately), Fast-charge capable: Up to 50% charge in around 30 minutes with 20W adapter or higher. In the Box - iPhone with iOS 15, USB-C to Lightning Cable, Documentation. Warranty - Apple-branded hardware product and accessories contained in the original packaging (“Apple Product”) come with a One-Year Limited Warranty. See apple.com/in/legal/warranty for more information. Height - 6.33 inches (160.8 mm).', 1, 2, 136000, 250, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (11, N'Pulse Gaming Racing Edition GT-700 Ergonomic Chair (Black+Red) Gaming Chair', N'New design: Pulse Gaming Chair features a car-seat style design, which include thigh support side bolsters, along with waist and shoulder pads that resemble a racing seat. Highly Adjustable: Removable headrest and lumbar pillow, adjustable armrest,backrest angle, height, pull out the lever and rotate knob to use rocking gaming chair function, everything is adjustable. Sturdy & Comfort: Our Ergonomic Chairs are designed in great construction with a heavy-duty base and frame to last long. Premium Quality: Our Gaming chair''s 4-level cylinder certified by SGS; Durable PU leather padded with high density shaping sponge, comfortable, skin friendly and wear-resisting; 2mm thick steel frame, more sturdy and stable; Rubber casters that tested by 1000 miles rolling. Ergonomic design - Pulse Gaming''s signature ergonomic design making it easier on your back and posture for longer periods of use.  It is equipped with 2 soft adjustable pillows : a lumbar pillow to support your back & a headrest pillow to support your neck and head. Steep Recline - Working hard and need a rest? Recline the backrest at lockable increments that goes up to 180°, find the right angle for you that compliments your body and posture. New and Improved - It has an upgraded look, is more spacious, and has extra padding material. Features - Cold molded foam for extra comfort, upgraded design with more space, steep recline going back 180° Rocking function that tilts the seat and back rest, tough metal frame supporting up to 150kg, puleather Material & Molded Foam, the soft puleather is built to last and is easy to clean, the frame is padded with a snug foam that has a density of 70 kg/m³ for the seat and 65 kg/m³ for the backrest, the molded foam adds extra padding to the chair providing more cushioned support to the user.', 2, 1, 11000, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (12, N'Drogo Multi-Purpose Ergonomic Gaming Chair with 7 Way Adjustable Seat, Mesh Fabric, 3D Armrest, Head & Lumbar Support Pillow | Home & Office Chair with Full Reclining Back & Footrest (Grey II)', N'ERGONOMIC DESIGN: Gaming chair linkage armrest design gaming chair with USB cable power supply massager that can drive by a USB port on computer, car, power switch or even power bank. Best masseur for users who need to sit for a long time. Vintage leather style matches all locations. MULTI FUNCTIONAL: 360° swivel and smooth racing caster wheels for mobility; 90°-180° reclining for working, gaming, reading or napping; 20° controllable rocking and retractable footrest for relaxing; Adjustable seat height, 158 KG capacity; head pillow and lumbar pillow for all body shapes. FOR BOTH GAMER AND OFFICE WORKER: Winged back provides multi-point body contact to share the pressure, save your spine and lumbar with ergonomic back and massage support, lean your legs more comfortable with bucket seat design, the side wings frame has been thinned and contains more soft filling. STURDY CONSTRUCTION & ECO FRIENDLY MATERIAL: Alloy frame covered in quality hand sewing PU leather and 10 inches high density foam for comfy, upgraded LANT gas cylinder and mechanism ensure the use age of the chair. INSTALLATION: Product Requires Self Assembly, Detail instruction manual included in the package, this gaming chair comes with all the tools necessary it only cost takes about 10-15mins to assemble the executive chair, you’ll be set up and ready to game.', 2, 5, 17000, 178, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (13, N'HASTHIP Gaming Chair, Ergonomic Racing Style Game Chair Relieve Back Neck Pain, Circle Gaming Chair with Adjustable Lumbar Support and Removable Neck Rest for PC Office, Gaming (Gray/Black)', N'Premium Materials & Comfy to Sit : Back and seat cushion are filled with breathable sponge, soft but of great elasticity resilience. Surface of our gaming chair for PC is covered with High quality artificial leather, smooth, wear-resisting and skin friendly, reducing the skin friction. The sturdy chair stand is more sturdy and durable,no deformation and break after long use. Ergonomic Gaming Chair: Designed for professional gamer, equipped with neckrest and waist support cusion, our game chair can effectively relieve the pressure of neck and sore of waist caused by the long time sitting. Proper size design can accommodate one adult completly, bringing you a better using experience. Smooth sliding roller wheel, moving the chair without any stuck. User friendly design,let you lying down on the chair: the high back chair is designe with adjustable angel, you can lean on the chair according your need, you can adjust the chair between 90° and 150°, The flexible back can provide you a place for you to take a break on the chair anytime. Enjoy the chair gaming. Easy to assemble: the assemble parts of our chair for gaming and tool are shipped by a package, when you receive the parcel, just follow the instruction to assemble the chair. Easy and convenient to use. Using it Anywhere: the classic and business style design, you can use it at home when you playing the game; use this circle gaming chair as a office chair when you are working, no matter where you place it , office, home,meeting room, game room, it will provide the great using experience.', 2, 2, 12000, 350, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (14, N'CELLBELL© Calisto C83 Mesh Mid-Back Ergonomic Office Chair/Revolving Chair/Computer Chair for Work from Home/Study Chair Metal Base Backrest Adjustable Chair [Black]', N'Ergonomic Sitting Position : CELLBELL Calisto Chair provides you best in class sitting postures for extra comfort. Seat and Base : 2 inch Thick Foam Cushion Padded Seat for your long hours comfort | Pneumatic Hydraulic with 4 inch seat height adjustment | Breathable contoured Mesh Back Fabric | Chair comes with Sturdy Metal Base for extra strength. Backrest Adjustment : Backrest can be adjustable upto 120° reclined. Arm-rest : Long Solid Arm-rest. Height Suitability : 5 ft to 5.8 ft ★ Weight Capacity : 125 Kgs. Weight Capacity : 105 Kgs. Warranty : 1 Year Warranty against Manufacturing Defects. If you are facing any issue, we are just one click away. We provide Door Step service. Assembly Required : It''s a Do-it-Yourself type Installation. Calisto is designed for self-assembly. (Installation instructions provided in the package). In case you need help, please contact seller customer care (given below) for helpful videos and call support. Assembly will be provided by the brand on request, Contact Seller; T&C* apply.', 2, 2, 4000, 120, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (15, N'Greysteel-Quantum Massage gaming chair with Foot rest Premium PU Leather Black 1 qty', N'ERGONOMIC DESIGN: Greysteel Gaming Chair is designed for a comfortable seated position and is equipped with Adjustable armrest and USB cable power supply massager that can be drive by a USB port on computer, car, power switch or even power bank. It is the best masseur for users who need to sit for a long time on a chair. Vintage leather style matches all locations and enhances the beauty of your setup. MULTI FUNCTION: Greysteel Gaming Chair has 360° swivel and smooth racing caster wheels for mobility; 90°-180° reclining for working, gaming, reading or napping; 20° controllable rocking and retractable footrest for relaxing. It has an adjustable seat height, 350 lbs capacity; head pillow and lumbar pillow for all body shapes. For both Gamer and Worker: Winged back provides multi-point body contact to share the pressure, save your spine and lumbar with ergonomic back and massage support. Lean your legs more comfortable with bucket seat design, the side wings frame has been thinned and contains more soft filling. STURDY CONSTRUCTION & ECO-FRIENDLY MATERIAL: Alloy frame covered in quality hand sewing PU leather and 10 inches high density foam for comfy. Upgraded LANT gas cylinder and mechanism ensure the use age of the chair. Installation and Brand Concept: We take the construction of every chair seriously. Strict inspection has been carried out from product design to factory testing. We hope every customer can get the perfect product, so we will always work hard to make you satisfied. Detail instruction manual included in the package. 24/7 customer services team all for shopping experience.', 2, 4, 17900, 400, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (16, N'ROUNDHILL Sheesham Wood Reading Writing Study Table Laptop Computer Workstation Desk for Home Office Students with 4 Drawers Storage Desktop Counter Table (Honey Finish)', N'Writing Study Table - This Study Table is made up of solid Sheesham wood and its ingenious design will refreshen your interiors with its plush look and compliments any existing decor, this Stiff Table is the one-stop product to fulfill all your study room needs and requirements while giving a gracious living Style, looking for a versatile desk for home and office use? Give this stylish computer desk with spacious storage a try, it provides you with an all-in-one storage solution. INGENIOUS DESIGN - The elegant and vintage design makes it well match with many home decorations study Tables are Ideal and perfect for Home, Office, Living Room, Bedroom & suitable for any study area. APPEARANCE - The compact table looks very ravishing and admiring Each product has gone through a stringent quality checking process in multi-stages, with a checkpoint of multiple quality aspects. STURDY & DURABLE - The Table is made up of Solid Sheesham Wood ensures Stability & Durability This Stiff Table is one-stop product to fulfill all your study room needs and requirements while giving a gracious living Style.', 3, 5, 15000, 344, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (17, N'TEKAVO Laptop Table, Computer table for home, Study Table for Adults, Study Tables, Office Desk, Table for office work - Teak Finish - Jungle Wood', N'MODERN STYLE & AMPLE STORAGE SHELVES- The shelves can be fixed on the left as a bookcase or display shelf, providing extra storage space, offering perfect workstation for your work or study, maximize your space. HIGH QUALITY MATERIAL & STABILITY- Thick metal frames provide more support, ensure stability and durability Desktop made of a unique composite material The adjustable leg pads make the table keep stable even on uneven floor. COMPACT DESIGN & MULTIFUNCTION - Multifunctional desk of simplistic style and compact size, works perfectly as computer desk, office workstation, study stable, writing or gaming desk in your study room, dormitory, living room or bedroom. 4 Tiers Extra Open Shelves - 4 tiers extra shelves on the side of the computer desk provide perfect storage.', 3, 3, 6000, 400, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (18, N'TEKAVO Multipurpose Computer desk office table with keyboard tray for home office, engineered wood finish Study writing computer laptop table desk 118x48x87cm (Jungle Wood /Brown & Black)', N'Made up of powder coated iron metal legs and thick particle board guarantees sturdiness and stability. It features Three shelves to keep your books, study materials, laptops, etc and 1 Shelves to keep CPU conveniently in one place. Monitor Riser and Keyboard Tray. The natural wood grain color variation design gives this writing desk an industrial style. Product Size: 120 cm length x 60 cm Width x 76 cm Height. Compact design for small and medium size rooms. Use Case: Minimalistic style makes this desk perfect for any work space as study table, Gaming Desk, computer desk, Desktop Table, home office desk, Laptop table, etc. Basic Assembly required. DIY (Do-It-Yourself) assembly instructions and assembly Video provided with the product. Our Team also can help you over video call to fix the trouble. Care: Do not slight or move furniture without dismantling, and clean using dry cloth only. Customization in few elements can be done on request. T&C apply.', 3, 1, 9000, 500, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (19, N'TEKAVO L Shape Corner Desk Multi-Utility Office Table Computer Desk for Home Office Engineered Wood Finish Writing Study Computer Laptop Desk Table Rustic Brown/Black – (130x48x75 cm)', N'LARGE SPACE & STORAGE – TEKAVO - L shaped with big desk panel and storage shelves can offer plenty of space for your keyboard and mouse when working, study, gaming, doing the industrial work in workstation, workbench and other home office activities. The dimension of the desk is: 130 cm (L) * 48 cm (W) * 75 cm (H). Size of the 2-tier open shelves is: Bottom shelf: 32 cm (L) * 48 cm (W), * 49.5 cm (H) which is high enough to put your computer host. Top shelf: 17 cm High. STURDY X CROSSBAR DESIGN - Sturdy X crossbar will make this corner desk more stability and durability than others desks. HIGH QUALITY & DURABLE - The corner desk is made of the high-quality heavy-duty powder coated steel frame and particle board with scratch-resistant, anti-collision design With the rustic brown and black mixed color design which make your desk looks more fashionable and stylish. EASY TO SELF-ASSEMBLE - This Desk comes with details & illustrated instructions & numbered parts, it’s easy to put it together It is Do It Yourself (DIY) type of product So, you need to assembled it by your own We are always there for assembly guidance and support. NOTE: Product comes in Multiple Packages. Customization in few elements can be done on request. T&C apply.', 3, 1, 13000, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (20, N'Urbain Home Seoul Foldable Multipurpose Study Table, Folding Computer Table for Home & Office, Heavy Duty Work from Home Desk with Keyboard Tray (Dark Wenge)', N'Product Dimensions: Length: 81cm, Width: 46cm, Height: 74cm. This product is 100% made in India. Urbain Home Foldable Study cum Computer Table is durable, elegant and Space Saving making it perfect for any space. The table can be used as study table, laptop table, reading table, kids table, work from home table, office table or in any way you like. Made of high quality Engineered wood and heavy duty steel for durability and high load capacity. Product Color: Dark Wenge| Product Style: Modern | Product Weight: 14 Kgs. Assembly or Installation: This is a pre-assembled product. No Assembly Required.', 3, 2, 3500, 800, N'')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] ON 

INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (1, N'Cash', N'', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (2, N'Card Payment', N'Bank', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (3, N'Net Banking', N'SBI', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (4, N'Net Banking', N'ICICI', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (5, N'Net Banking', N'Bank of Maharashtra', N'False', N'server down')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (6, N'UPI', N'Google Pay', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (7, N'UPI', N'Phone Pay', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (8, N'UPI', N'BHIM Pay', N'True', N'')
SET IDENTITY_INSERT [dbo].[PaymentMethods] OFF
GO
