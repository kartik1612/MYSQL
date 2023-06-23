
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
/*A18*/
select YEAR(OrderDate) yearOfOrder, SUM(totaldue) TotalDueOrder from Sales.SalesOrderHeader
where YEAR(OrderDate)<=2016
group by YEAR(OrderDate)
order by yearOfOrder
/*A19*/





































































