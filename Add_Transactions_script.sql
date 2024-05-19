EXEC AddTransaction
    @UserID = 1,
    @CategoryID = 1,
    @Amount = 100.50,
    @TransactionDate = '2023-05-15',
    @Description = 'Weekly groceries';
GO

EXEC AddTransaction
    @UserID = 2,
    @CategoryID = 2,
    @Amount = 75.00,
    @Description = 'Electricity bill';
GO
