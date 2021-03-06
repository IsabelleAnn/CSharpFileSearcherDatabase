USE [master]
GO
/****** Object:  Database [FileSearches]    Script Date: 30/10/2018 16:11:00 ******/
CREATE DATABASE [FileSearches]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FileSearches', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FileSearches.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FileSearches_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FileSearches_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FileSearches] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FileSearches].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FileSearches] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FileSearches] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FileSearches] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FileSearches] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FileSearches] SET ARITHABORT OFF 
GO
ALTER DATABASE [FileSearches] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FileSearches] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FileSearches] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FileSearches] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FileSearches] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FileSearches] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FileSearches] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FileSearches] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FileSearches] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FileSearches] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FileSearches] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FileSearches] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FileSearches] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FileSearches] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FileSearches] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FileSearches] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FileSearches] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FileSearches] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FileSearches] SET  MULTI_USER 
GO
ALTER DATABASE [FileSearches] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FileSearches] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FileSearches] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FileSearches] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FileSearches] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FileSearches] SET QUERY_STORE = OFF
GO
USE [FileSearches]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FileSearches]
GO
/****** Object:  Table [dbo].[SearchQueries]    Script Date: 30/10/2018 16:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchQueries](
	[SearchQueryID] [int] IDENTITY(1,1) NOT NULL,
	[TextToSearch] [nchar](50) NOT NULL,
	[RootDirectory] [nchar](50) NULL,
 CONSTRAINT [PK_SearchQueries] PRIMARY KEY CLUSTERED 
(
	[SearchQueryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SearchResults]    Script Date: 30/10/2018 16:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchResults](
	[SearchResultsID] [int] IDENTITY(1,1) NOT NULL,
	[SearchQueryID] [int] NOT NULL,
	[FullFilePath] [varchar](260) NOT NULL,
 CONSTRAINT [PK_SearchResults] PRIMARY KEY CLUSTERED 
(
	[SearchResultsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SearchQueries] ON 

INSERT [dbo].[SearchQueries] ([SearchQueryID], [TextToSearch], [RootDirectory]) VALUES (40, N'flowers                                           ', N'C:\                                               ')
INSERT [dbo].[SearchQueries] ([SearchQueryID], [TextToSearch], [RootDirectory]) VALUES (41, N'butterflies                                       ', N'C:\                                               ')
INSERT [dbo].[SearchQueries] ([SearchQueryID], [TextToSearch], [RootDirectory]) VALUES (42, N'pearl jam                                         ', N'C:\                                               ')
INSERT [dbo].[SearchQueries] ([SearchQueryID], [TextToSearch], [RootDirectory]) VALUES (43, N'roses                                             ', N'c:\windows                                        ')
INSERT [dbo].[SearchQueries] ([SearchQueryID], [TextToSearch], [RootDirectory]) VALUES (44, N'wallpaper                                         ', N'c:\                                               ')
INSERT [dbo].[SearchQueries] ([SearchQueryID], [TextToSearch], [RootDirectory]) VALUES (45, N'photoshop                                         ', N'c:\users                                          ')
SET IDENTITY_INSERT [dbo].[SearchQueries] OFF
SET IDENTITY_INSERT [dbo].[SearchResults] ON 

INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4161, 40, N'C:\Program Files\Adobe\Adobe Illustrator CS6 (64 Bit)\Presets\en_GB\Swatches\Nature\Flowers.ase')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4162, 40, N'C:\Program Files\Adobe\Adobe Illustrator CS6 (64 Bit)\Presets\en_GB\Symbols\Flowers.ai')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4163, 40, N'C:\Program Files (x86)\OpenOffice 4\share\gallery\flowers.gif')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4164, 40, N'C:\Program Files (x86)\Winamp\Plugins\Milkdrop2\presets\Stahlregen - Spiral Beats (Fluctuating Flowers).milk')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4165, 41, N'C:\Program Files (x86)\Winamp\Plugins\Milkdrop2\presets\martin - butterflies.milk')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4166, 42, N'C:\Users\IzyD\Music\MusicBee\Artist Pictures\Thumb\Pearl Jam.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4167, 43, N'c:\windows\WinSxS\amd64_microsoft-windows-mail-app_31bf3856ad364e35_6.3.9600.17415_none_e263286f2372a5f7\Roses.htm')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4168, 43, N'c:\windows\WinSxS\amd64_microsoft-windows-mail-app_31bf3856ad364e35_6.3.9600.17415_none_e263286f2372a5f7\Roses.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4169, 43, N'c:\windows\WinSxS\x86_microsoft-windows-mail-app_31bf3856ad364e35_6.3.9600.17415_none_86448ceb6b1534c1\Roses.htm')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4170, 43, N'c:\windows\WinSxS\x86_microsoft-windows-mail-app_31bf3856ad364e35_6.3.9600.17415_none_86448ceb6b1534c1\Roses.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4171, 44, N'c:\Program Files (x86)\Adobe\Adobe InDesign CS6\Presets\multimedia\MP3PlayerWallpaper.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4172, 44, N'c:\Program Files (x86)\Winamp\Plugins\avs\Community Picks\zamuz meets tuggummi - fat balls (wallpaper wannabe candy theme).avs')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4173, 44, N'c:\Users\IzyD\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4174, 44, N'c:\Users\IzyD\AppData\Roaming\Microsoft\Windows Photo Viewer\Windows Photo Viewer Wallpaper.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4175, 44, N'c:\Users\IzyD\Pictures\Christmas-costume-for-cats-HD-funny-winter-wallpaper_1920x1080.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4176, 44, N'c:\Users\IzyD\Pictures\christmas_cats_2-wallpaper-1920x1080.jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4177, 44, N'c:\Users\IzyD\Pictures\Hd Christmas Lights Wallpaper 9877 Hd Wallpapers in Celebrations ....jpg')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4178, 44, N'c:\Windows\servicing\Packages\Microsoft-Windows-Shell-Wallpaper-Common-Package~31bf3856ad364e35~amd64~~6.3.9600.16384.cat')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4179, 44, N'c:\Windows\servicing\Packages\Microsoft-Windows-Shell-Wallpaper-Common-Package~31bf3856ad364e35~amd64~~6.3.9600.16384.mum')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4180, 44, N'c:\Windows\System32\catroot\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\Microsoft-Windows-Shell-Wallpaper-Common-Package~31bf3856ad364e35~amd64~~6.3.9600.16384.cat')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4181, 44, N'c:\Windows\WinSxS\amd64_microsoft-windows-wallpaperhost_31bf3856ad364e35_6.3.9600.17415_none_4f0ef2857919fca0\WallpaperHost.exe')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4182, 44, N'c:\Windows\WinSxS\FileMaps\$$_web_wallpaper_theme1_bd62cce71eb8e312.cdf-ms')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4183, 44, N'c:\Windows\WinSxS\FileMaps\$$_web_wallpaper_theme2_bd62cce91eb8e309.cdf-ms')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4184, 44, N'c:\Windows\WinSxS\FileMaps\$$_web_wallpaper_windows_bcf8a09f6400ad61.cdf-ms')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4185, 44, N'c:\Windows\WinSxS\Manifests\amd64_microsoft-windows-s..esktopwallpaperhost_31bf3856ad364e35_6.3.9600.16384_none_a69efc2c1c4d0825.manifest')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4186, 44, N'c:\Windows\WinSxS\Manifests\amd64_microsoft-windows-s..l-wallpaper-windows_31bf3856ad364e35_6.3.9600.16384_none_cbd0863f8468c553.manifest')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4187, 44, N'c:\Windows\WinSxS\Manifests\amd64_microsoft-windows-shell-wallpaper-theme1_31bf3856ad364e35_6.3.9600.16384_none_c798631778e4f8cc.manifest')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4188, 44, N'c:\Windows\WinSxS\Manifests\amd64_microsoft-windows-shell-wallpaper-theme2_31bf3856ad364e35_6.3.9600.16384_none_c7984c4f78e5126d.manifest')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4189, 44, N'c:\Windows\WinSxS\Manifests\amd64_microsoft-windows-wallpaperhost_31bf3856ad364e35_6.3.9600.16384_none_4ec257a979539018.manifest')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4190, 44, N'c:\Windows\WinSxS\Manifests\amd64_microsoft-windows-wallpaperhost_31bf3856ad364e35_6.3.9600.17415_none_4f0ef2857919fca0.manifest')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4191, 45, N'c:\users\All Users\Adobe\InDesign\Version 8.0\en_GB\Extensions\idcs6_Photoshop Import Filter.zxp')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4192, 45, N'c:\users\All Users\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop CS6 (64 Bit).lnk')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4193, 45, N'c:\users\All Users\regid.1986-12.com.adobe\regid.1986-12.com.adobe_Photoshop-CS6-Win-GM.swidtag')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4194, 45, N'c:\users\IzyD\AppData\Local\Adobe\Flash CS4\en\Configuration\Keyboard Shortcuts\Photoshop 6.wfx')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4195, 45, N'c:\users\IzyD\AppData\Local\Temp\Photoshop Temp207677982972')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4196, 45, N'c:\users\IzyD\AppData\Local\Temp\RarSFX0\App Specific Settings\Photoshop.wacomas')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4197, 45, N'c:\users\IzyD\AppData\Local\Temp\RarSFX0\App Specific Settings\PhotoshopElementsEditor.wacomas')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4198, 45, N'c:\users\IzyD\AppData\Roaming\Adobe\Adobe Photoshop CS6\Adobe Photoshop CS6 Settings\Adobe Photoshop X64 CS6 Prefs.psp')
INSERT [dbo].[SearchResults] ([SearchResultsID], [SearchQueryID], [FullFilePath]) VALUES (4199, 45, N'c:\users\IzyD\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Adobe Photoshop CS6 (64 Bit).lnk')
SET IDENTITY_INSERT [dbo].[SearchResults] OFF
ALTER TABLE [dbo].[SearchResults]  WITH CHECK ADD  CONSTRAINT [FK_SearchResults_SearchQueries] FOREIGN KEY([SearchQueryID])
REFERENCES [dbo].[SearchQueries] ([SearchQueryID])
GO
ALTER TABLE [dbo].[SearchResults] CHECK CONSTRAINT [FK_SearchResults_SearchQueries]
GO
USE [master]
GO
ALTER DATABASE [FileSearches] SET  READ_WRITE 
GO
