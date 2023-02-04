--Assignment Number 3
--1
select * from Order1 join Customer on Order1.CustomerId=Customer.ID where Customer.Phone=8574961236;

--2
select ProductName from Product where CategoryName='HairCare';

--3
select * from Order1 join Customer on Order1.CustomerId=Customer.ID where Customer.City='Pune';

--4
select * from (Select * from  OrderItem join Product on OrderItem.ProductId=Product.PId) AS OP join Order1 on OP.OrderId=Order1.Id 
where ProductName='Shampoo'

--5

CREATE TABLE Employee(
	[EId] [int] primary key,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DName] [nvarchar](50) NOT NULL,
	[Manager] [nvarchar](50) NULL,
	[Rating] [nvarchar](50) NOT NULL,
	[JoiningDt] [datetime] NULL)



select CONCAT(FirstName,' ',LastName) as name , DName , Rating from Employee