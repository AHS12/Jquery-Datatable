USE [master]
GO
/****** Object:  Database [JqueryTblDB]    Script Date: 9/18/2018 8:33:39 AM ******/
CREATE DATABASE [JqueryTblDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JqueryTblDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\JqueryTblDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JqueryTblDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\JqueryTblDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JqueryTblDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JqueryTblDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JqueryTblDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JqueryTblDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JqueryTblDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JqueryTblDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JqueryTblDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JqueryTblDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JqueryTblDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [JqueryTblDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JqueryTblDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JqueryTblDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JqueryTblDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JqueryTblDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JqueryTblDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JqueryTblDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JqueryTblDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JqueryTblDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JqueryTblDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JqueryTblDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JqueryTblDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JqueryTblDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JqueryTblDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JqueryTblDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JqueryTblDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JqueryTblDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JqueryTblDB] SET  MULTI_USER 
GO
ALTER DATABASE [JqueryTblDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JqueryTblDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JqueryTblDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JqueryTblDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [JqueryTblDB]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 9/18/2018 8:33:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[position] [varchar](50) NOT NULL,
	[office] [varchar](50) NULL,
	[age] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [JqueryTblDB] SET  READ_WRITE 
GO
