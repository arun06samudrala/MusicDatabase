/*CREATE A DATABASE*/
CREATE DATABASE USERS;

/*USE THE DATABASE*/
USE USERS;

/*CREATE THE TABLES*/
CREATE TABLE USERS_SOURCE(
UserID INT NOT NULL PRIMARY KEY,
EmailID VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
FirstName VARCHAR(100) NOT NULL,
Age INT NOT NULL,
Country VARCHAR(100) NOT NULL
);


CREATE TABLE ARTISTS_SOURCE(
ArtistID INT NOT NULL PRIMARY KEY,
LastName VARCHAR(100) NOT NULL,
FirstName VARCHAR(100),
Age INT NOT NULL,
Country VARCHAR(100)
);


/* UNIQUE CONSTRAINT FOR COLUMN EmailID*/
ALTER TABLE USERS_SOURCE ADD UNIQUE(EmailID);


/* INSERT DATA INTO USERS_source TABLE */
USE [USERS]
GO

INSERT INTO [dbo].[USERS_SOURCE]
           ([UserID]
           ,[EmailID]
           ,[LastName]
           ,[FirstName]
           ,[Age]
           ,[Country])
     VALUES
       (1, 'stenny0@com.com', 'Tenny', 'Stefa', 53, 'Indonesia'),
       (2,'ctrubshaw1@pagesperso-orange.fr','Trubshaw','Colet',65, 'Russia'),
       (3,'vjakolevitch2@about.me', 'Jakolevitch', 'Viviene', 55, 'Indonesia'),
       (4, 'ahuzzey3@gizmodo.com', 'Huzzey', 'Alex', 20, 'Ukraine'),
       (5, 'echarle4@mediafire.com', 'Charle', 'Elias', 71, 'France')
GO

/* INSERT DATA INTO artist_source TABLE */
USE [USERS]
GO

INSERT INTO [dbo].[ARTISTS_SOURCE]
           ([ArtistID]
           ,[LastName]
           ,[FirstName]
           ,[Age]
           ,[Country])
     VALUES
           (1,'Nasi', 'Vivie', 47, 'Sri Lanka'),
           (2, 'Bradnock', 'Patric', 83, 'Brazil'),
           (3,'Binnie', 'Lilias', 57, 'Czech Republic'),
            (4, 'Bott', 'Peg', 97, 'Portugal'),
			(5, 'Witchalls', 'Phelia', 39, 'Portugal')
GO
