--First Assignment	

USE [Assesment]

CREATE TABLE Customer(
	[ID] [int] primary key ,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50),
	[City] [nvarchar](50),
	[Country] [nvarchar](50),
	[Phone] [nvarchar](10),
	[FaxN] [varchar](255) )


CREATE TABLE Order1(
	[Id] [int] primary key ,
	[OrderDate] [datetime] NOT NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[TotalAmount] [decimal](12, 2),
	[ShippingDt] [datetime] ,
	[ShipName] [nvarchar](50),
)

ALTER TABLE Order1  ADD  CONSTRAINT [FK_Order1_Customer] FOREIGN KEY(CustomerId)
REFERENCES Customer(ID)

CREATE TABLE OrderItem(
	[Id] [int] primary key,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [decimal](12, 2) ,
	[Quantity] [int] )


ALTER TABLE OrderItem  ADD  CONSTRAINT [FK_OrderItem_Order1] FOREIGN KEY(OrderId)
REFERENCES Order1(Id)

ALTER TABLE OrderItem  ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY(ProductId)
REFERENCES Product(PId)



CREATE TABLE Product(
	[PId] [int] primary key,
	[ProductName] [nvarchar](50) NOT NULL,
	[Package] [nvarchar](50) NULL,
	[IsDiscontinued] [bit] NOT NULL,
	[SpCompany] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[ProductPrice] [int] NULL,
	[stock] [int] NULL)
 


SELECT * FROM Customer
--
SELECT * FROM Customer WHERE FirstName like '__j%';
--
SELECT * FROM Customer WHERE Country like 'I%';


