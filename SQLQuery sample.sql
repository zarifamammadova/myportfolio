
/*.Write a query in SQL to find the employee's full name (firstname and lastname) and city from the following tables. 
Order the result set on lastname then by firstname.*/
select 
rtrim(pp.FirstName)+' '+ltrim(pp.LastName) as fullname,
pa.City
from Person.Person as pp
inner join HumanResources.Employee as hr
on pp.BusinessEntityID=hr.BusinessEntityID
inner join person.Address as pa
on pp.BusinessEntityID=pa.AddressID
inner join person.BusinessEntityAddress as pba
on pp.BusinessEntityID=pba.BusinessEntityID
order by
pp.FirstName,
pp.LastName;

/*. From the following tables write a SQL query to retrieve the orders with orderqtys greater 
than 5 or unitpricediscount less than 1000, 
and totaldues greater than 100. Return all the columns from the tables.*/
select
d.OrderQty,
d.UnitPriceDiscount,
s.TotalDue
from 
sales.SalesOrderHeader as s
inner join Sales.SalesOrderDetail as d
on d.SalesOrderID=s.SalesOrderID
and d.OrderQty>5 and d.UnitPriceDiscount<1000
where s.SubTotal>100;


/*From the following table write a query in SQL to return the employee with the
fewest number of vacation hours compared to other employees with the same job title. 
Partitions the employees by job title and apply the first value to each partition independently.*/ --sual?
select 
JobTitle,
LastName,
VacationHours,
FIRST_VALUE(lastname) over (partition by jobtitle order by vacationhours) as fewestvacation
from HumanResources.Employee as hre
join person.person as pp
on pp.BusinessEntityID=hre.BusinessEntityID
