USE [master]
GO
/****** Object:  Database [Cms]    Script Date: 5/19/2019 12:38:21 PM ******/
CREATE DATABASE [Cms]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cms', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Cms.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cms_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Cms_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cms] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cms] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cms] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cms] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cms] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cms] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cms] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cms] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cms] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cms] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cms] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cms] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cms] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cms] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cms] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cms] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cms] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cms] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cms] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cms] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cms] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cms] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cms] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cms] SET  MULTI_USER 
GO
ALTER DATABASE [Cms] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cms] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cms] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cms] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Cms] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Cms]
GO
/****** Object:  Table [dbo].[Admin_Table]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Table](
	[Adminid] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Emailid] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin_Table] PRIMARY KEY CLUSTERED 
(
	[Adminid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Complain/Problem_Table]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complain/Problem_Table](
	[ProblemId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Problemname] [nvarchar](100) NOT NULL,
	[Problemdomain] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Complain/Problem_Table] PRIMARY KEY CLUSTERED 
(
	[ProblemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Complain_Form]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complain_Form](
	[ComplainId] [int] IDENTITY(1,1) NOT NULL,
	[Complaintime] [nvarchar](50) NOT NULL,
	[Complaindate] [nvarchar](50) NOT NULL,
	[Problemname] [nvarchar](50) NOT NULL,
	[Problemdomain] [nvarchar](50) NOT NULL,
	[Urgencyofcomplain] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Mobileno] [nvarchar](50) NOT NULL,
	[Aadharno] [nvarchar](50) NOT NULL,
	[Emailid] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Complaininformation] [nvarchar](50) NOT NULL,
	[ComplainStatus] [nvarchar](50) NOT NULL,
	[Complainhead] [nvarchar](50) NOT NULL,
	[Complainphoneno] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Complain_Form] PRIMARY KEY CLUSTERED 
(
	[ComplainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department_Details]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department_Details](
	[Departmentid] [int] NOT NULL,
	[Departmentname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department_Details] PRIMARY KEY CLUSTERED 
(
	[Departmentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculty_Registration]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty_Registration](
	[Facid] [int] IDENTITY(1,1) NOT NULL,
	[Solution] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[EmailId] [nvarchar](50) NOT NULL,
	[Mobileno] [nvarchar](50) NOT NULL,
	[FPassword] [nvarchar](50) NOT NULL,
	[Qualification] [nvarchar](50) NOT NULL,
	[Aadharno] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NOT NULL,
	[WRole] [nchar](10) NULL,
 CONSTRAINT [PK_Faculty_Registration] PRIMARY KEY CLUSTERED 
(
	[Facid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student_Details]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Details](
	[Enrollno] [int] NOT NULL,
	[Nameofstudent] [nvarchar](50) NOT NULL,
	[Dob] [nvarchar](50) NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Department/Branch] [nvarchar](50) NOT NULL,
	[Mobleno] [nvarchar](50) NOT NULL,
	[Aadharno] [nvarchar](50) NULL,
	[Emailid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student_Details] PRIMARY KEY CLUSTERED 
(
	[Enrollno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Registration]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Registration](
	[Userid] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Mobilenumber] [nvarchar](50) NOT NULL,
	[Aadharnumber] [nvarchar](50) NOT NULL,
	[Emailaddress] [nvarchar](50) NOT NULL,
	[userrole] [nchar](10) NULL,
 CONSTRAINT [PK_User_Registration] PRIMARY KEY CLUSTERED 
(
	[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Worker_Registration]    Script Date: 5/19/2019 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker_Registration](
	[Workerid] [int] IDENTITY(1,1) NOT NULL,
	[Solution] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Dob] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Emailid] [nvarchar](50) NOT NULL,
	[Mobileno] [nvarchar](50) NOT NULL,
	[Aadharno] [nvarchar](50) NOT NULL,
	[Wpassword] [nvarchar](50) NOT NULL,
	[Wrole] [nchar](10) NULL,
 CONSTRAINT [PK_Worker_Registration] PRIMARY KEY CLUSTERED 
(
	[Workerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin_Table] ([Adminid], [FirstName], [LastName], [Emailid], [Password]) VALUES (1, N'Umang', N'Ameta', N'uameta@ymail.com', N'12365')
ALTER TABLE [dbo].[Complain/Problem_Table]  WITH CHECK ADD  CONSTRAINT [FK_Complain/Problem_Table_Complain/Problem_Table] FOREIGN KEY([ProblemId])
REFERENCES [dbo].[Complain/Problem_Table] ([ProblemId])
GO
ALTER TABLE [dbo].[Complain/Problem_Table] CHECK CONSTRAINT [FK_Complain/Problem_Table_Complain/Problem_Table]
GO
USE [master]
GO
ALTER DATABASE [Cms] SET  READ_WRITE 
GO
