CREATE PROCEDURE [SalesLT].[spGetOrdersByCustomer]
	@customerID int = 0

AS

	SET NOCOUNT ON;

	SELECT c0.CustomerID
    , c0.CompanyName
    , c0.FirstName
    , c0.LastName
    , h0.OrderDate
    , h0.DueDate
    
    FROM SalesLT.SalesOrderHeader h0
        INNER JOIN SalesLT.Customer c0
            ON c0.CustomerID = h0.CustomerID

    WHERE h0.CustomerID = @customerID

GO