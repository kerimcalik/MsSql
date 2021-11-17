select
	top 1
	p.BusinessEntityID,
	dbo.fnGetPersonName(e.BusinessEntityID),
	e.Gender
from
	Person.Person p
inner join HumanResources.Employee e
on e.BusinessEntityID = p.BusinessEntityID
order by p.BusinessEntityID