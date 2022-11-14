CREATE PROCEDURE [SalesLT].[spListProducts]
	@ProductCategoryID int = 0

AS

	SET NOCOUNT ON;

	SELECT ProductCategory = ProductCategory.Name
		, Product = Product.Name

	FROM SalesLT.Product
		INNER JOIN SalesLT.ProductCategory
			ON ProductCategory.ProductCategoryID = Product.ProductCategoryID

	WHERE ProductCategory.ProductCategoryID = @ProductCategoryID

GO