--Fourth Assignment
--1

select Total, 
(case 
	when Total >20000 then 'Exotic Liquids'
	
	end ) as SpCompany
	
from(select SUM(Price) as Total

from (select OrderItem.UnitPrice*OrderItem.Quantity as Price , Product.SpCompany from 
Product join OrderItem on Product.PId=OrderItem.ProductId where SpCompany='Exotic Liquids' ) as Details ) as final

--2

select top 1* from Employee order by JoiningDt;
--3
select top 1* from Employee order by JoiningDt desc;

--4
 select ProductName, ProductPrice from (SELECT 
    ProductName, 
    ProductPrice, 
     
    ROW_NUMBER() OVER (ORDER BY ProductPrice ASC) AS rn_asc,
	ROW_NUMBER() OVER (ORDER BY ProductPrice DESC) AS rn_desc

  FROM Product) as final where rn_desc=1 or rn_asc=1 
  
  --5
  
  select ProductName from Product where stock=0
  --6

  select * from OrderItem
  select * from Product


  select OutoffStock from (select *,
  case	
	when Product.stock < TQ.qty then Product.ProductName 
	else ''
	end as OutoffStock
  from (select ProductId, sum(Quantity)as qty from OrderItem group by ProductId) as TQ join Product on Product.PId=TQ.ProductId) as final 
  where OutoffStock!=''

  --7

  select  CategoryName, SpCompany from Product 
  
  --8
  

  select concat(FirstName, ' ' ,LastName) as FullName, OrderNumber, OrderDate from Customer join Order1 on Customer.id=Order1.CustomerId

  --9
  

  select top 1 * from (select CustomerId, count(CustomerId)AS TotalOrder from Order1 group by CustomerId)as MaxO 
  join Customer on Customer.ID=MaxO.CustomerId

  --10
  select * from Customer where FirstName like '%ra%' or LastName like '%ra%'
 
 --11

select 
case	
	when first_word > 0 then substring(SpCompany,1,first_word)
	else SpCompany
	end as CompanyFirst_Word_
	from (SELECT *, CHARINDEX(' ', SpCompany) - 1 AS first_word
FROM Product) as final


  