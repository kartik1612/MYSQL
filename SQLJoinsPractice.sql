/*SQL JOINS
---------------------------------------------------------
A20
*/

use adventureWorks2019

select BEC.BusinessEntityID, LastName, FirstName
	from Person.BusinessEntityContact BEC
		inner join Person.ContactType CT
			on CT.ContactTypeID = BEC.ContactTypeID
		inner join Person.Person P
			on P.BusinessEntityID= BEC.PersonID
	where CT.Name='Purchasing Manager'
	order by LastName, FirstName;
-- A21
select ROW_NUMBER() OVER (PARTITION BY PostalCode ORDER BY SalesYTD DESC) AS "Row Number",
P.LastName, SP.SalesYTD, A.PostalCode
	from sales.SalesPerson SP
		join Person.Person P
			on SP.BusinessEntityID=P.BusinessEntityID
		join Person.Address A
			on SP.TerritoryID=A.AddressID
	where TerritoryID is not null and SalesYTD>0
	order by PostalCode, SalesYTD desc
-- A22
select CT.ContactTypeID, name, COUNT(BEC.ContactTypeID) no_contacts from Person.BusinessEntityContact BEC
right join Person.ContactType CT
on BEC.ContactTypeID=CT.ContactTypeID
group by Name, CT.ContactTypeID
having COUNT(BEC.ContactTypeID)>=100
--A23
select CAST(RateChangeDate as VARCHAR(10)) as FromDate,
	   CONCAT(LastName, FirstName, MiddleName) full_name 
	   , (40 * EPH.Rate) AS SalaryInAWeek
	from HumanResources.EmployeePayHistory EPH
		join Person.Person P
			on EPH.BusinessEntityID=P.BusinessEntityID;

--A24
select CAST(RateChangeDate as VARCHAR(11)) as FromDate,
	   CONCAT(LastName, FirstName, MiddleName) full_name,
	   (40 * EPH.Rate) AS SalaryInAWeek
		from HumanResources.EmployeePayHistory EPH
		join Person.Person P
			on EPH.BusinessEntityID=P.BusinessEntityID
		where EPH.RateChangeDate = (SELECT MAX(RateChangeDate)
		FROM HumanResources.EmployeePayHistory 
                where BusinessEntityID = EPH.BusinessEntityID)
		order by full_name

select YEAR(OrderDate) as Year, sum(TotalDue)
from sales.SalesOrderHeader
group by YEAR(OrderDate)
order by Year



















