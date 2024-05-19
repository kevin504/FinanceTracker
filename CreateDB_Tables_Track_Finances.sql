CREATE DATABASE FinanceTracker;
GO

USE FinanceTracker;
GO

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    UserName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE
);
GO

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(50) NOT NULL
);
GO


CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID),
    Amount DECIMAL(10, 2) NOT NULL,
    TransactionDate DATETIME DEFAULT GETDATE(),
    Description NVARCHAR(255)
);
GO

INSERT INTO Users (UserName, Email) VALUES ('John Doe', 'john@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Jane Smith', 'jane@example.com');
GO


INSERT INTO Categories (CategoryName) VALUES ('Groceries');
INSERT INTO Categories (CategoryName) VALUES ('Utilities');
INSERT INTO Categories (CategoryName) VALUES ('Entertainment');
GO
