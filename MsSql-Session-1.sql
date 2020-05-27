use ecommerce
INSERT INTO Category (CategoryName,CategoryDescription,ParentCategoryId)
VALUES ('Computer','Computer Desc',0)

INSERT INTO Category (CategoryName,CategoryDescription,ParentCategoryId)
VALUES ('Phone','Phone Desc',0)

INSERT INTO Category (CategoryName,CategoryDescription,ParentCategoryId)
VALUES ('Tv','Tv Desc',0)

INSERT INTO Category (CategoryName,CategoryDescription,ParentCategoryId)
VALUES ('Camera','Camera Desc',0)


SELECT * FROM Category
SELECT * FROM Product

/*Computer*/
INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('ASUS N75SM','CORE I7 3.6GHZ RAM-16GB',20,9000,1)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('MACBOOK PRO','CORE I9 3.6GHZ RAM-32GB',30,19000,1)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('DELL XPS','CORE I7 3.8GHZ RAM-32GB',20,15000,1)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('HP 15','CORE I7 2.6GHZ RAM-8GB',20,4000,1)

SELECT * FROM Product
/*Phone*/
INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('Iphone 11 PRO','512GB',10,14000,2)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('Huawei P40 PRO','256 GB',30,10000,2)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('Samsung Galaxy Note 10','28GB',12,7000,2)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('Xiaomi Mi Note 10','128GB',32,6000,2)

SELECT * FROM Product
/*Tv*/

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('SAMSUNG UE 65RU','163CM',32,7000,3)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('SONY 85XH','215CM',22,26000,3)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('VESTEL 65RU','164CM',52,5000,3)

INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES ('LG 65Z','165CM',42,12000,3)

SELECT * FROM Product
UPDATE Product SET ProductDescription='185CM' WHERE Id=12
UPDATE Product SET ProductName='LG 95Z', ProductDescription='195CM' WHERE Id=12

DELETE FROM Product WHERE Id=13

SELECT * FROM Product
SELECT Id FROM Product
SELECT Id,ProductName,ProductDescription FROM Product
SELECT * FROM Product WHERE Id=12
SELECT * FROM Product WHERE ProductName = 'ASUS N75SM'
SELECT * FROM Product WHERE ProductName = 'ASUS N75SM' AND ProductDescription='CORE İ7 3.6GHZ RAM-16GB'
SELECT * FROM Product WHERE ProductName = 'ASUS N75SM' AND NOT ProductDescription='CORE İ7 3.6GHZ RAM-16GB'
SELECT * FROM Product ORDER BY ProductDescription
SELECT * FROM Product ORDER BY ProductDescription DESC
SELECT * FROM Product ORDER BY ProductName DESC
SELECT * FROM Product WHERE Id BETWEEN 5 AND 10

SELECT min(Id) FROM Product
SELECT max(Id) FROM Product
SELECT count(Id) FROM Product
SELECT avg(Id) FROM Product
SELECT sum(Id) FROM Product

SELECT * FROM Product WHERE ProductName LIKE 'A%'
SELECT * FROM Product WHERE ProductName LIKE 'S%'
SELECT * FROM Product WHERE ProductName LIKE '%O'
SELECT * FROM Product WHERE ProductName LIKE '%E%'
SELECT * FROM Product WHERE ProductName LIKE '__US%'

SELECT * FROM Product WHERE Id > 7
SELECT * FROM Product WHERE Id >=7
SELECT * FROM Product WHERE Id <> 9
SELECT * FROM Product WHERE Id != 9
SELECT * FROM Product WHERE Id IN(10,11,12)
SELECT * FROM Product WHERE ProductName IS NULL
SELECT * FROM Product WHERE ProductName IS NOT NULL
SELECT ProductName AS UrunAdi,ProductDescription AS UrunAciklamasi FROM Product
SELECT TOP 5 * FROM Product
SELECT TOP 5 ProductName FROM Product


CREATE PROCEDURE InsertProduct
@productName nvarchar(75),
@productDescription nvarchar(200),
@stockQuantity int,
@price decimal,
@categoryId int
AS
BEGIN
INSERT INTO Product (ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES (@productName,@productDescription,@stockQuantity,@price,@categoryId)
END

EXEC InsertProduct 
@productName='MSI XCF',
@productDescription='I7 8700K 16GB RAM',
@stockQuantity=20,
@price=9000,
@categoryId=1

CREATE PROCEDURE UpdateProduct
@id int,
@productName nvarchar(75),
@productDescription nvarchar(200),
@stockQuantity int,
@price decimal,
@categoryId int
AS
BEGIN
UPDATE Product SET 
ProductName=@productName,
ProductDescription=@productDescription,
StockQuantity=@stockQuantity,
Price = @price,
CategoryId = @categoryId
WHERE Id=@id
END

EXEC UpdateProduct
@id=14,
@productName='DELL XCF',
@productDescription='I7 8700K 16GB RAM',
@stockQuantity=30,
@price=11000,
@categoryId=1

ALTER PROCEDURE DeleteProduct
@id int
AS
BEGIN
DELETE FROM Product WHERE Id=@id
END

EXEC DeleteProduct @id=14

CREATE PROCEDURE GetById
@id int
AS
BEGIN
SELECT * FROM Product WHERE Id=@id
END

EXEC GetById @id=1

CREATE PROCEDURE GetList
AS
BEGIN
SELECT * FROM Product
END

EXEC GetList





SELECT * FROM Product


