
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

/*From the following table, write a query in SQL to return the BusinessEntityID, quarter, sales year, 
and sales quota for the current quarter. Additionally, calculate the differences in sales quota from the first 
and last quarters of the year for each salesperson. Only include records for years 
after 2005 and for BusinessEntityIDs between 274 and 275. Order the results by BusinessEntityID, sales year, and quarter.*/
select 
	businessentityid,
	DATEPART(quarter,quotadate) as quarter,
	datepart(year,quotadate) as year,
	SalesQuota,
	SalesQuota-firstquarter as differencefirst,
	SalesQuota-lastquarter as differencelast
from(
select
	businessentityid,
	DATEPART(quarter,quotadate) as quarter,
	datepart(year,quotadate) as year,
	SalesQuota,
	quotadate,
	first_value(SalesQuota) over (partition by businessentityid,datepart(year,quotadate) order by datepart(quarter,quotadate) desc ) as lastquarter,
	first_value(SalesQuota) over (partition by businessentityid,datepart(year,quotadate) order by datepart(quarter,quotadate)  ) as firstquarter

from Sales.SalesPersonQuotaHistory)t
where datepart(year,quotadate)>2005 and BusinessEntityID between 274 and 275
order by 
BusinessEntityID,datepart(year,quotadate),DATEPART(quarter,quotadate)

/*.From the following table, write a query in SQL to return the business entity ID, sales year, 
current sales quota, and the next year's sales quota for a specific salesperson.
Use the LEAD window function to get the next year's sales quota, defaulting to 0 if not available. 
Filter the results for the salesperson with BusinessEntityID 277 for the years 2011 and 2012.*/
select
BusinessEntityID,
year(quotadate) AS Year,
SalesQuota,
lead(salesquota,1,0) over (partition by businessentityid order by year(quotadate)) as nextyear
from Sales.SalesPersonQuotaHistory
where BusinessEntityID=277 and year(quotadate) in (2011,2012);

/*From the following table, write a query in SQL to return the sales year, sales quarter,
current sales quota, the next quarter's sales quota, and the difference between the current 
and next quarter's sales quotas for a specific salesperson.
Filter the results for the salesperson with BusinessEntityID 277 for the years 2012 and 2013.*/

select *,
SalesQuota-nextqsales as diff
from(
select
businessentityid,
year(quotadate) as year,
datepart(quarter,quotadate) as quarter,
salesquota,
lead(salesquota,1,0) over (  partition by businessentityid order by year(quotadate),datepart(quarter,quotadate)) as nextqsales
from Sales.SalesPersonQuotaHistory)t
where businessentityid=277 and year between 2012 and 2013;

/*From the following table write a query in SQL to rank the products in inventory, by the inventory 
locationID values between 3 and 4, 
according to their quantities. Divide the result set by LocationID and sort the result set on Quantity in descending order.*/
select
*,
dense_rank() over (partition by locationid order by quantity desc) as rank
from Production.ProductInventory
where LocationID between 3 and 4;
---------------------
/*Write a solution to find all sales that occurred in the first year each product was sold.
For each product_id, identify the earliest year it appears in the Sales table.
Return all sales entries for that product in that year.
Return a table with the following columns: product_id, first_year, quantity, and price.
Return the result in any order.*/
select 
    t.product_id,
    price,
    quantity,
    first_year 
from(
select
    distinct product_id,
    min (year) as first_year
    from sales
    group by
    product_id
)t
join sales s
on t.product_id=s.product_id
and first_year=s.year
