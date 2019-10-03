create database PHOTOLIO

select * from [dbo].[Position]

select * from [dbo].[Product]

update [dbo].[User] set [PositionId] =1 where id=1;

delete [dbo].[User] where id=3;

 drop table [dbo].[User]


/****** Object:  Table [dbo].[Category]    Script Date: 11/27/2017 4:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Version] [bigint] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedDate] [bigint] NOT NULL,
	[UpdatedUserId] [int] NOT NULL,
	[UpdatedDate] [bigint] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 11/27/2017 4:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](200) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Version] [bigint] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedDate] [bigint] NOT NULL,
	[UpdatedUserId] [int] NOT NULL,
	[UpdatedDate] [bigint] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/27/2017 4:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[Date] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Township] [nvarchar](200) NULL,
	[IsDelete] [bit] NOT NULL,
	[Version] [bigint] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedDate] [bigint] NOT NULL,
	[UpdatedUserId] [int] NOT NULL,
	[UpdatedDate] [bigint] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 11/27/2017 4:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Version] [bigint] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedDate] [bigint] NOT NULL,
	[UpdatedUserId] [int] NOT NULL,
	[UpdatedDate] [bigint] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/27/2017 4:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Photo] [nvarchar](MAX) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Price] [nvarchar](200)  NULL,
	[CategoryId] [int] NULL,
	[IsDelete] [bit] NOT NULL,
	[Version] [bigint] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedDate] [bigint] NOT NULL,
	[UpdatedUserId] [int] NOT NULL,
	[UpdatedDate] [bigint] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/27/2017 4:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Profile] [nvarchar](MAX) NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[FullAddress] [nvarchar](200) NULL,
	[PhoneNo] [nvarchar](200) NULL,
	[UserBio] [nvarchar](200) NULL,
	[PositionId] [int]  NULL,
	[ProductId] [int] NULL,
	[IsDelete] [bit] NOT NULL,
	[Version] [bigint] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedDate] [bigint] NOT NULL,
	[UpdatedUserId] [int] NOT NULL,
	[UpdatedDate] [bigint] NOT NULL,
	[Photoshop] [nvarchar](200) NULL,
	[Photography] [nvarchar](200) NULL,
	[Illustrator] [nvarchar](200) NULL,
	[Media] [nvarchar](200) NULL,
	[PremierePro] [nvarchar](200) NULL,
	[Lightroom] [nvarchar](200) NULL,
	[Burmese] [nvarchar](200) NULL,
	[English] [nvarchar](200) NULL,
	[Chinese] [nvarchar](200) NULL,
	[PackageTitle] [nvarchar](200) NULL,
	[AboutPackage] [nvarchar](600) NULL,
	[PackagePrice] [nvarchar](200) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[Category] ON 
SET IDENTITY_INSERT [dbo].[Category] OFF

SET IDENTITY_INSERT [dbo].[ContactUs] ON 
SET IDENTITY_INSERT [dbo].[ContactUs] OFF

SET IDENTITY_INSERT [dbo].[Order] ON 
SET IDENTITY_INSERT [dbo].[Order] OFF

SET IDENTITY_INSERT [dbo].[Position] ON 
SET IDENTITY_INSERT [dbo].[Position] OFF

SET IDENTITY_INSERT [dbo].[Product] ON 
SET IDENTITY_INSERT [dbo].[Product] OFF

SET IDENTITY_INSERT [dbo].[User] ON 
SET IDENTITY_INSERT [dbo].[User] OFF






