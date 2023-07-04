
use	AdventureWorks2019

select ShiftID, count(Gender) Numbers, Gender from HumanResources.EmployeeDepartmentHistory a
join HumanResources.Employee b on a.BusinessEntityID = b.BusinessEntityID
group by gender, ShiftID
/*A1*/
select * from HumanResources.Employee
order by JobTitle
/*A2*/
select * from Person.Person e
order by LastName
/*A3*/
select FirstName, LastName, BusinessEntityID employeeID from Person.Person e
order by LastName
/*A4*/
select productid, productnumber, name from Production.Product
where SellStartDate is not NULL and productline = 'T'
order by name
--A7
select customerID, sum(Freight) as total_freight
from sales.SalesOrderHeader
group by CustomerID
order by CustomerID
--A8
select CustomerID, SalesPersonID, AVG(SubTotal) avg_subTotal , SUM(SubTotal) sum_subTotal
from Sales.SalesOrderHeader
group by CustomerID, SalesPersonID
order by CustomerID desc
--A9
select ProductID, SUM(Quantity) Total_Quantity from Production.ProductInventory
where Shelf = 'A' or Shelf = 'C' or Shelf ='H'
group by ProductID
having SUM(Quantity)>500
order by ProductID
--A10
select SUM(Quantity) as total_quantity
from Production.ProductInventory PI
group by (LocationID*10)
--A11
select P.BusinessEntityID, FirstName, LastName, PhoneNumber from Person.PersonPhone PP
join Person.Person P
on PP.BusinessEntityID = P.BusinessEntityID
where LastName like 'L%'
order by LastName, FirstName
--A12
select SalesPersonID, customerID, SUM(SubTotal) sum_subTotal
from Sales.SalesOrderHeader
where SalesPersonID is not null
group by ROLLUP(SalesPersonID, CustomerID)



/*A18*/
select YEAR(OrderDate) yearOfOrder, SUM(totaldue) TotalDueOrder from Sales.SalesOrderHeader
where YEAR(OrderDate)<=2016
group by YEAR(OrderDate)
order by yearOfOrder
/*A19*/
select ContactTypeID, Name from Person.ContactType
where Name like '% Manager'
order by Name desc































































