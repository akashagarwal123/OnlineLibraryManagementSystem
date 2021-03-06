USE [master]
GO
/****** Object:  Database [SummerTrainingProject]    Script Date: 01/30/2019 01:00:20 ******/
CREATE DATABASE [SummerTrainingProject] ON  PRIMARY 
( NAME = N'SummerTrainingProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SummerTrainingProject.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SummerTrainingProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SummerTrainingProject_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SummerTrainingProject] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SummerTrainingProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SummerTrainingProject] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SummerTrainingProject] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SummerTrainingProject] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SummerTrainingProject] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SummerTrainingProject] SET ARITHABORT OFF
GO
ALTER DATABASE [SummerTrainingProject] SET AUTO_CLOSE ON
GO
ALTER DATABASE [SummerTrainingProject] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SummerTrainingProject] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SummerTrainingProject] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SummerTrainingProject] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SummerTrainingProject] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SummerTrainingProject] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SummerTrainingProject] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SummerTrainingProject] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SummerTrainingProject] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SummerTrainingProject] SET  ENABLE_BROKER
GO
ALTER DATABASE [SummerTrainingProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SummerTrainingProject] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SummerTrainingProject] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SummerTrainingProject] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SummerTrainingProject] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SummerTrainingProject] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SummerTrainingProject] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SummerTrainingProject] SET  READ_WRITE
GO
ALTER DATABASE [SummerTrainingProject] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SummerTrainingProject] SET  MULTI_USER
GO
ALTER DATABASE [SummerTrainingProject] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SummerTrainingProject] SET DB_CHAINING OFF
GO
USE [SummerTrainingProject]
GO
/****** Object:  Table [dbo].[RegisterEmployeeDetails]    Script Date: 01/30/2019 01:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegisterEmployeeDetails](
	[ID] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MobileNo] [bigint] NULL,
	[EmailId] [varchar](50) NULL,
	[Password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MobileNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DisplayBooksDetails]    Script Date: 01/30/2019 01:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DisplayBooksDetails](
	[ID] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Publisher] [varchar](50) NOT NULL,
	[Cost] [int] NOT NULL,
	[PNRNO] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PNRNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentRegister]    Script Date: 01/30/2019 01:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentRegister](
	[Id] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MobileNo] [bigint] NULL,
	[EmailId] [varchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[DOB] [varchar](50) NOT NULL,
	[Doj] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MobileNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentFine]    Script Date: 01/30/2019 01:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentFine](
	[Id] [int] IDENTITY(101,1) NOT NULL,
	[Fine] [bigint] NULL,
	[EnrollmentNo] [bigint] NOT NULL,
	[DateOfIssue] [varchar](50) NULL,
	[DateOfReturn] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_RegisterEmployeeDetails]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_RegisterEmployeeDetails] @name varchar(50),@mobileno bigint ,
@emailid varchar(50),@password varchar(50)
as
begin
insert into RegisterEmployeeDetails values(@name,@mobileno,@emailid,@password)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertBookDetail]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_InsertBookDetail] @name varchar(50),@author varchar(50),@publisher varchar(50),
@cost bigint, @pnrno bigint
as
begin
insert into DisplayBooksDetails values(@name,@author,@publisher,@cost,@pnrno)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_DisplayBooksDetails]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_DisplayBooksDetails] @name varchar(50), @author varchar(50),@publisher varchar(50),@cost bigint,
@pnrno bigint
as
begin
insert into DisplayBooksDetails values(@name,@author,@publisher,@cost,@pnrno)
end
GO
/****** Object:  Table [dbo].[tblIssue]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIssue](
	[ID] [int] IDENTITY(101,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EnrollmentNo] [bigint] NULL,
	[DateOfIssue] [varchar](50) NULL,
	[DateOfReturn] [varchar](50) NULL,
	[fkid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[StudentRegistration]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[StudentRegistration] @name varchar(50),@mobileno bigint , @emailid varchar(50),@password varchar(50),
@dob varchar(50),@doj varchar(50)
as
begin
insert into StudentRegister values(@name,@mobileno,@emailid,@password,@dob,@doj)
end
GO
/****** Object:  StoredProcedure [dbo].[ShowStudentRegistrationDetails]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowStudentRegistrationDetails]
as
begin
Select * from StudentRegister
end
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAuthentication]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetStudentAuthentication] @username varchar(50),@password varchar(50)
as
begin
Select * from StudentRegister where Name=@username and  password=@password
end
GO
/****** Object:  StoredProcedure [dbo].[usp_StudentFine]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_StudentFine] @fine bigint , @enrollmentno bigint,@dateofissue varchar(50),
@dateofreturn varchar(50)
as
begin
insert into StudentFine values(@fine,@enrollmentno,@dateofissue,@dateofreturn)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateBookDetails]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_UpdateBookDetails] @id int, @name varchar(50) ,@author varchar(50) , 
@publisher varchar(50),@cost bigint ,@pnrno bigint
as
begin
Update DisplayBooksDetails set Name=@name,Author=@author,Publisher=@publisher,Cost=@cost,PNRNO=@pnrno where ID=@id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_tblreturn]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_tblreturn] @enrollment bigint
as
begin
delete from tblIssue where EnrollmentNo=@enrollment
end
GO
/****** Object:  StoredProcedure [dbo].[usp_tableIssue]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_tableIssue] @name varchar(50),@enrollmentno bigint,@dateofissue varchar(50),
@dateofreturn varchar(50),@id int
as
begin
insert into tblIssue values(@name,@enrollmentno,@dateofissue,@dateofreturn,@id)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ShowRecords]    Script Date: 01/30/2019 01:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ShowRecords]
as
begin
Select * from tblIssue
end
GO
/****** Object:  ForeignKey [FK__tblIssue__fkid__32E0915F]    Script Date: 01/30/2019 01:00:25 ******/
ALTER TABLE [dbo].[tblIssue]  WITH CHECK ADD FOREIGN KEY([fkid])
REFERENCES [dbo].[DisplayBooksDetails] ([ID])
GO
