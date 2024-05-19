CREATE PROCEDURE AddTransaction
    @UserID INT,
    @CategoryID INT,
    @Amount DECIMAL(10, 2),
    @TransactionDate DATETIME = NULL,
    @Description NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @TransactionDate IS NULL
    BEGIN
        SET @TransactionDate = GETDATE();
    END

    INSERT INTO Transactions (UserID, CategoryID, Amount, TransactionDate, Description)
    VALUES (@UserID, @CategoryID, @Amount, @TransactionDate, @Description);
END
GO
