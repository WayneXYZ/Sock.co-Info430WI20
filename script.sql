/*
    SQL Code for this project
    Database: Class Databse, either 03 or 04, determined later
    Author: Wayne, Cameron, Mitchell
    Log:
        2020/01/21 - Created Script
*/

-- Creates Database
If Exists(Select name from master.dbo.sysdatabases Where Name = 'Sock_co')
Begin
	USE [master]
	ALTER DATABASE [Sock_co] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE [Sock_co]
End
GO
CREATE DATABASE Sock_co
GO
USE Sock_co
GO