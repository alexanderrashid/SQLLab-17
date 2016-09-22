--1
select *
from Customers
--2
select distinct Country 
from Customers
--3
select *
from Customers
where CustomerID like 'BI%'
--4
select top 100 *
from Orders
--5
select *
from Customers
where PostalCode like '1010'
or PostalCode like '3012'
or PostalCode like '12209'
or PostalCode like '05023'
--6
select *
from Orders
where ShipRegion != 'NULL'
--7
select *
from Customers
order by Country, City 
--8
insert into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax)
values ('ZXCDX', 'My Company', 'Alex Rashid', 'Owner', '123 N Main', 'Romeo', 'MI', '48575', 'USA', '(556) 123-4567', '(123) 435-0099')
--9
update Orders
set ShipRegion='EuroZone'
where ShipCountry='France'
--10
delete from [Order Details]
where Quantity=1
--11
select avg(Quantity)
from [Order Details]
select max(Quantity)
from [Order Details]
select min(Quantity)
from [Order Details]
--12
select avg(Quantity)
from [Order Details]
select max(Quantity)
from [Order Details]
select min(Quantity)
from [Order Details]
group by [Order Details].OrderID
--13
select CustomerID
from Orders
where OrderID = 10290
--14
select Customers.CustomerID
from Orders
inner join Customers
on Orders.CustomerID=Customers.CustomerID

select OrderID
from Orders
left join Customers
on Orders.CustomerID=Customers.CustomerID

select OrderID
from Orders
right join Customers
on Orders.CustomerID=Customers.CustomerID
--15
select FirstName 
from Employees
where ReportsTo is NULL
--16
select FirstName
from Employees
where ReportsTo = 2
