CREATE SCHEMA IF NOT EXISTS case_sample;
SELECT DATABASE();

USE case_sample;

CREATE TABLE IF NOT EXISTS Customer (
	Id int NOT NULL AUTO_INCREMENT,
    CustomerID int,
    CustomerName VARCHAR(800),
    CustomerEmail VARCHAR(800),    
    PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS Interaction (
	Id int NOT NULL AUTO_INCREMENT,
    InteractionID int,
    Subject TEXT,
    Message TEXT,
    DateCreate datetime DEFAULT CURRENT_TIMESTAMP,
    Sender VARCHAR(100),
    PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS Ticket (
	Id int NOT NULL AUTO_INCREMENT,
    TicketID int,
    CategoryID int,
    CustomerID int,
    DateCreate datetime DEFAULT CURRENT_TIMESTAMP,
    DateUpdate datetime DEFAULT CURRENT_TIMESTAMP,    
    PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS TicketInteraction (
	Id int NOT NULL AUTO_INCREMENT,
    TicketID int,
    InteractionID int,
    PRIMARY KEY (Id)
);

CREATE VIEW VW_TicketInteraction AS
SELECT TI.TicketID, I.Message, I.Sender, I.Subject, I.DateCreate 
  FROM TicketInteraction TI Left Join
	   Ticket T ON T.TicketID = TI.TicketID LEFT JOIN
       Interaction I ON I.Id = TI.InteractionID;