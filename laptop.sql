﻿﻿--drop database Perfume_Website 


CREATE DATABASE Laptop_PRJ301_HE176775

USE [Laptop_PRJ301_HE176775]
-- Tạo bảng [dbo].[Users]
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1),
	[UserName] [nvarchar](50) PRIMARY KEY NOT NULL ,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Email] [nvarchar](50)  NULL,
	[BirthDay] date NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[status] bit NOT NULL
)

INSERT INTO [dbo].[Users] ([UserName], [FullName], [Password], [Address],[Image], [Email], [BirthDay], [Phone], [RoleID], [status])
VALUES 
    ('user', N'user', '123456', N'Hà Nội', 'images/users/user69.jpg', 'minhdao3444@gmail.com', '2000-08-14', '0912345678', 2, 1);

-- Tạo bảng [dbo].[Categories]
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	CONSTRAINT [PK_Categories] PRIMARY KEY([CategoryID])
)

INSERT INTO [dbo].[Categories] ([CategoryName], [Description])
VALUES 
    ('Acer', N'Acer cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ'),
    ('Asus', N'Asus thiết kế mỏng nhẹ, thời trang, hiệu năng mạnh mẽ, màn hình chất lượng cao'),
    ('MSI', N'MSI hiệu năng mạnh mẽ, thiết kế hầm hố'),
    ('Dell', N'Dell máy tính xách tay dành cho doanh nghiệp với độ bảo mật cao và khả năng quản lý dễ dàng'),
	('Lenovo', N'Lenovo máy tính xách tay cao cấp với thiết kế bền bỉ, hiệu năng mạnh mẽ và bàn phím được đánh giá cao');


-- Tạo bảng [dbo].[Suppliers]
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Phone] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
	CONSTRAINT [PK_Suppliers] PRIMARY KEY([SupplierID])
)



INSERT INTO [dbo].[Suppliers] ([CompanyName], [ContactName], [Country], [Phone], [HomePage])
VALUES 
    ('Acer Incorporated', 'Supplier Contact Acer', 'Taiwan', '+11 11111', 'http://www.acer.com'),
    ('AsusTeK Computer', 'Supplier Contact Asus', 'Taiwan', '+22 22222', 'http://www.acer.com'),
    ('Micro-Star International', 'Supplier Contact MSI', 'Taiwan', '+33 33333', 'http://www.acer.com'),
    ('Dell Technologies', 'Supplier Contact Dell', 'USA', '+44 44444', 'http://www.acer.com'),
    ('Lenovo', 'Supplier Contact Lenovo', 'Taiwan', '+55 55555', 'http://www.acer.com');
   

-- Tạo bảng [dbo].[Products]
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](100) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[QuantitySold] [int] NULL,
	[StarRating] [smallint] NULL,
	[Discontinued] [bit] NULL,
	[image] [nvarchar](max) NULL,
	[describe] [nvarchar](max) NULL,
	[releaseDate] [date] NULL,
	[Discount] [float] NULL,
	[status] bit Not null,
	CONSTRAINT [PK_Products] PRIMARY KEY([ProductID]),
	CONSTRAINT [FK_Products_Supplier]
    FOREIGN KEY ([SupplierID])
    REFERENCES [dbo].[Suppliers] ([SupplierID]) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT [FK_Products_Category] 
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories] ([CategoryID]) 
)

INSERT INTO [dbo].[Products] (
    [ProductName], 
    [SupplierID], 
    [CategoryID], 
    [QuantityPerUnit], 
    [UnitPrice], 
    [UnitsInStock], 
    [QuantitySold], 
    [StarRating], 
    [Discontinued],
	[image],
	[describe],
	[releaseDate],
	[Discount],
	[status]
	)
VALUES 
    -- 5 products of Acer 
    ('Acer 1 xxx', 1, 1, '13.3inch 15.6inch', 99.99, 100, 10, 5, 0, 'images/Acer.jpeg, images/Acer.jpeg', 
	N'Acer cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.7, 1),

    ('Acer 2 zzz', 1, 1, '14.3inch 15.6inch', 89.99, 100, 10, 4, 0, 'images/Acer2.jpg, images/Acer2.jpg', 
	N'Acer cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.5, 1),

    ('Acer 3 yyy', 1, 1, '13.3inch 16.6inch', 79.99, 100, 10, 3, 0, 'images/Acer3.jpg, images/Acer3.jpg', 
	N'Acer cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.4, 1),

    ('Acer 4 zzzX1000', 1, 1, '13.3inch 14.6inch', 109.99, 100, 10, 4, 0, 'images/Acer4.jpg, images/Acer4.jpg', 
	N'Acer cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.45, 1),

    ('Acer gaming z1000', 1, 1, '14.3inch 15.6inch', 119.99, 100, 10, 5, 0, 'images/Acer5.jpg, images/Acer5.jpg', 
	N'Acer cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.6, 1),
  
	-- 5 products of Asus  
    ('Asus 1 X1000', 2, 2, '12.3inch 14.6inch', 99.99, 100, 10, 5, 0, 'images/Asus1.jpg, images/Asus1.jpg', 
	N'Asus cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.6, 1),

    ('Asus 2 X2000', 2, 2, '12.3inch 15.6inch', 89.99, 100, 10, 4, 0, 'images/Asus2.jpg, images/Asus2.jpg', 
	N'Asus cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.5, 1),

    ('Asus 3 X3000', 2, 2, '11.3inch 16.6inch', 79.99, 100, 10, 4, 0, 'images/Asus3.jpg, images/Asus3.jpg', 
	N'Asus cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.6, 1),

    ('Asus Max X4000', 2, 2, '15.3inch 17.6inch', 139.99, 100, 10, 5, 0, 'images/Asus4.jpg, images/Asus4.jpg', 
	N'Asus cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.7, 1),

    ('Asus XZ1000', 2, 2, '12.3inch 14.6inch', 99.99, 100, 10, 3, 0, 'images/Asus5.jpg, images/Asus5.jpg', 
	N'Asus cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.3, 1),

    
	-- 1 products of MSI 

    ('MSI XYZ1000', 3, 3, '12.3inch 14.6inch', 99.99, 100, 10, 4, 0, 'images/MSI1.jpg, images/MSI1.jpg', 
	N'MSI cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.3, 1),
	
	-- 1 products of Dell 
    ('Dell for future', 4, 4, '14.3inch 15.6inch', 109.99, 100, 10, 5, 0, 'images/Dell.jpg, images/Dell.jpg', 
	N'Dell cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.5, 1),

	-- 1 products of Lenovo
	    ('Lenovo 12345', 5, 5, '14.3inch 16.6inch', 89.99, 100, 10, 3, 0, 'images/Leno.jpg, images/Leno.jpg', 
	N'Dell cung cấp nhiều dòng máy tính chơi game tuyệt vời, đáp ứng nhu cầu đa dạng của game thủ', '2024-03-01',0.4, 1);


-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserName] [nvarchar](50) NOT NULL, 
 	[TotalMoney] [money] NULL, 
	[status] bit not null,
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserName])
 REFERENCES [dbo].[Users] ([UserName]) ON DELETE NO ACTION
)

INSERT INTO [dbo].[Orders] ([Date], [UserName], [TotalMoney], [status]) VALUES 
	('2024-03-05', 'user', 99.99, 1),
	('2024-03-05', 'minh', 109.99, 1);


	
 -- Tạo bảng OrderDetails
 CREATE TABLE [dbo].[OrderDetails]( 
 	[OrderID] [int] NOT NULL,  	
	[ProductID] [int] NOT NULL, 
 	[Quantity] [float] NOT NULL, 
 	[UnitPrice] [money] NULL,
	[Discount] [float] NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderID], [ProductID] ),
	CONSTRAINT [FK_ProductDetail] FOREIGN KEY ([ProductID])
	REFERENCES [dbo].[Products]([ProductID]) ON DELETE CASCADE,
	CONSTRAINT [FK_OrderDetail] FOREIGN KEY ([OrderID])
	REFERENCES [dbo].[Orders]([OrderID]) ON DELETE CASCADE
)

INSERT INTO [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES 
 (1, 1, 1, 99.99, 0.7), 
 (2, 1, 1, 109.99, 0.5);  

	CREATE TABLE Wallets (
    WalletID INT IDENTITY(1,1),
	UserName [nvarchar](50),
    Balance DECIMAL(10, 2),
	CONSTRAINT [PK_Wallets] PRIMARY KEY ([WalletID]),
	CONSTRAINT [FK_Wallets_Users] FOREIGN KEY ([UserName])
	REFERENCES [dbo].[Users]([UserName])
)

INSERT INTO Wallets (UserName, Balance)
VALUES
('minh', 2000),
('minhdao', 3000),
('user', 2000);

INSERT INTO [dbo].[Users] ([UserName], [FullName], [Password], [Address],[Image], [Email], [BirthDay], [Phone], [RoleID], [status])
VALUES 
    ('minhdao', 'minhdao', '123456', N'Ha Noi', 'images/users/admin.jpg', 'daom28659@gmail.com', '2003-06-10', '0961442233', 1, 1)
INSERT INTO Wallets (UserName, Balance)
VALUES
('minh', 1000)



