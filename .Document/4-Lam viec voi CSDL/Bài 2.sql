USE Jdbc
GO
CREATE TABLE Categories
(
	Id CHAR(3) NOT NULL,
	Name NVARCHAR(50) NOT NULL,
	PRIMARY KEY(Id)
)
GO
CREATE TABLE Products
(
	Id INT IDENTITY(1000, 1) NOT NULL,
	Name NVARCHAR(50) NOT NULL,
	CategoryId CHAR(3) DEFAULT 'MOB',
	PRIMARY KEY(Id),
	FOREIGN KEY(CategoryId) REFERENCES Categories(Id)
		ON DELETE SET DEFAULT ON UPDATE CASCADE
)

INSERT INTO Categories(Id, Name) VALUES('MOB', 'Mobile')
INSERT INTO Categories(Id, Name) VALUES('LAP', 'Laptop')
INSERT INTO Categories(Id, Name) VALUES('CAM', 'Camera')
INSERT INTO Categories(Id, Name) VALUES('FAS', 'Fashion')

INSERT INTO Products(Name, CategoryId) VALUES('iPhone 9','MOB')
INSERT INTO Products(Name, CategoryId) VALUES('Samsung Galaxy','MOB')
INSERT INTO Products(Name, CategoryId) VALUES('Sony Experia','MOB')
INSERT INTO Products(Name, CategoryId) VALUES('Dell Star','LAP')
INSERT INTO Products(Name, CategoryId) VALUES('Sony Vio','LAP')
INSERT INTO Products(Name, CategoryId) VALUES('Canon','CAM')
INSERT INTO Products(Name, CategoryId) VALUES('Acer 2017','LAP')

UPDATE Categories SET Id='MTX' WHERE Id='CAM'

DELETE Categories WHERE Id='MTX'

SELECT * FROM Categories
SELECT * FROM Products

--KHÁM PHÁ ESHOPV10
USE EShopV10
SELECT * FROM Categories WHERE Id=1001
SELECT * FROM Products WHERE CategoryId=1001

SELECT * FROM Customers WHERE Id='ANTON'
SELECT * FROM Orders WHERE CustomerId='ANTON'

SELECT * FROM Orders WHERE Id=10573
SELECT * FROM OrderDetails WHERE OrderId=10573

SELECT * FROM Products WHERE CategoryId IN (1003, 1007)
SELECT * FROM Products 
	WHERE CategoryId IN (SELECT Id FROM Categories WHERE Name LIKE '%o%')

SELECT * FROM Orders WHERE Description IS NULL OR Description=''

SELECT * FROM Products 
	WHERE DatePart(QUARTER, ProductDate)=3 AND YEAR(ProductDate) IN (1981, 1983)

SELECT Name, ProductDate FROM Products 
	WHERE DateDiff(Year, ProductDate, getdate())=10
--JOIN
SELECT c.NameVN 'Loại', p.Name 'Sản phẩm', p.UnitPrice 'Đơn giá'
	FROM Products p
		INNER JOIN Categories c ON c.Id=p.CategoryId
	ORDER BY c.NameVN

SELECT * FROM Categories

SELECT c.NameVN 'Loại', p.Name 'Sản phẩm', p.UnitPrice 'Đơn giá'
	FROM Products p
		RIGHT OUTER JOIN Categories c ON c.Id=p.CategoryId
	ORDER BY c.NameVN

SELECT c.*
	FROM Products p
		RIGHT OUTER JOIN Categories c ON c.Id=p.CategoryId
	WHERE p.Id IS NULL

SELECT * FROM Categories WHERE Id NOT IN(SELECT CategoryId FROM Products)

--GROUP BY
SELECT Name, CategoryId 
	FROM Products 
	ORDER BY CategoryId
SELECT c.NameVN 'Loại', 
	COUNT(p.Id) 'Số SP',
	MIN(UnitPrice) 'Giá TN',
	MAX(UnitPrice) 'Giá CN',
	AVG(UnitPrice) 'Giá TB',
	SUM(UnitPrice*Quantity) 'Giá trị'
	FROM Products p
		JOIN Categories c ON c.Id=p.CategoryId
	WHERE YEAR(ProductDate)=2011
	GROUP BY c.NameVN
SELECT Year(ProductDate) 'Năm', 
	COUNT(Id) 'Số SP',
	MIN(UnitPrice) 'Giá TN',
	MAX(UnitPrice) 'Giá CN',
	AVG(UnitPrice) 'Giá TB',
	SUM(UnitPrice*Quantity) 'Giá trị'
	FROM Products 
	GROUP BY Year(ProductDate)
		HAVING COUNT(Id)=1
	ORDER BY Year(ProductDate) DESC

SELECT * FROM OrderDetails ORDER BY ProductId

SELECT p.Name,
	SUM(d.Quantity) 'Số Lượng',
	SUM(d.Quantity*d.UnitPrice) 'Doanh Số',
	MIN(d.UnitPrice) 'Giá bán TN',
	MAX(d.UnitPrice) 'Giá bán CN'
FROM OrderDetails d
	JOIN Products p ON p.Id=d.ProductId
GROUP BY p.Name

SELECT c.NameVN,
	SUM(d.Quantity) 'Số Lượng',
	SUM(d.Quantity*d.UnitPrice) 'Doanh Số',
	MIN(d.UnitPrice) 'Giá bán TN',
	MAX(d.UnitPrice) 'Giá bán CN'
FROM OrderDetails d
	JOIN Products p ON p.Id=d.ProductId
	JOIN Categories c ON c.Id=p.CategoryId
GROUP BY c.NameVN