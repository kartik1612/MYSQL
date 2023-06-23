/*SQL JOINS
A20
---------------------------------------------------------
*/
select BEC.BusinessEntityID, LastName, FirstName
	from Person.BusinessEntityContact BEC
		inner join Person.ContactType CT
			on CT.ContactTypeID = BEC.ContactTypeID
		inner join Person.Person P
			on P.BusinessEntityID= BEC.PersonID
	where CT.Name='Purchasing Manager'
	order by LastName, FirstName





















