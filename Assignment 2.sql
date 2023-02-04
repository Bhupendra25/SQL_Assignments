--Second Assignment
/*--1.
SELECT * FROM Customer WHERE Country = 'Canada'
--2.
select concat(FirstName,' ' ,LastName )  AS FullName from Customer 
--3
Select * from Customer Where FaxN!='Null' 

--4
Select * from Customer where FirstName like '_h%'

--5
select * from OrderItem where UnitPrice>500 and UnitPrice<1000

--6
--Alter Table Order1 ADD ShippingDt datetime
select * from Order1   Order By ShippingDt

--7
--Alter Table Order1 ADD ShipName nvarchar(50)
select * from Order1 where ShipName='La corned' or ShipName='abondance'

--8
--Alter Table Product ADD SpCompany nvarchar(50)
select * from Product where SpCompany='Exotic Liquids'

--9
select Product.ProductName , AVG(OrderItem.Quantity) AS Average from OrderItem join Product on OrderItem.ProductId=Product.Id Group By Product.ProductName

--10

select Order1.ShipName , OP.SpCompany from (Select * from  OrderItem join Product on OrderItem.ProductId=Product.PId) AS OP join Order1 on OP.OrderId=Order1.Id 
where IsDiscontinued='true'

--11
select * from Employee where Manager!='null' 

--12
--Alter Table Product ADD CategoryName nvarchar(50)

select OID,PN,CN,(Price-(Price*0.10))as PriceAfterDiscount from 
(Select OrderItem.OrderId as OID, Product.ProductName as PN, Product.CategoryName as CN, (OrderItem.UnitPrice*OrderItem.Quantity)as Price 
from  OrderItem join Product on OrderItem.ProductId=Product.PId
) as Bill order by OID
*/
--13


select Total, 
(case 
	when Total >20000 then 'Exotic Liquids'
	
	end ) as SpCompany
	
from(select SUM(Price) as Total

from (select OrderItem.UnitPrice*OrderItem.Quantity as Price , Product.SpCompany from 
Product join OrderItem on Product.PId=OrderItem.ProductId where SpCompany='Exotic Liquids' ) as Details ) as final
