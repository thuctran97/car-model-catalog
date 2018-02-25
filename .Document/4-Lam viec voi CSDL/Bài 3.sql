USE EShopV10
GO
CREATE PROC spInsertCustomer
(
	@Id NVARCHAR(50),
	@Password NVARCHAR(50),
	@Fullname NVARCHAR(50),
	@Email NVARCHAR(50),
	@Photo NVARCHAR(50) = 'User.png',
	@Activated BIT = 0
)
AS
BEGIN
	INSERT INTO Customers(Id, Password, Fullname, Email, Photo, Activated)
		VALUES(@Id, @Password, @Fullname, @Email, @Photo, @Activated)
END
GO
EXEC spInsertCustomer 'TeoNV', '123', N'Nguyễn Văn Tèo', 'TeoNV@gmail.com'

SELECT * FROM Customers
GO
CREATE PROC spSelectProducts
(
	@MinPrice FLOAT = 0,
	@MaxPrice FLOAT = 1000
)
AS
BEGIN
	SELECT * FROM Products 
		WHERE UnitPrice BETWEEN @MinPrice AND @MaxPrice
END
GO
EXEC spSelectProducts 5, 10

GO
CREATE PROC spInsertCategory
(
	@Id INT OUT,
	@Name NVARCHAR(50),
	@NameVN NVARCHAR(50)
)
AS
BEGIN
	INSERT INTO Categories(Name, NameVN) VALUES(@Name, @NameVN)
	SET @Id=@@IDENTITY
END
GO
DECLARE @Id INT
EXEC spInsertCategory @Id OUT, 'Remote Control', N'Bộ điều khiển từ xa'
PRINT @Id