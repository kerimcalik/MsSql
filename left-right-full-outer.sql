select
	--p.FirstName
	--,p.MiddleName
	--,p.LastName
	--(p.FirstName + ' ' + isnull(p.MiddleName,'') + ' ' + p.LastName) as FullName
	--,e.EmailAddress
	count(1)
from
	Person.Person p
right join Person.EmailAddress e
--left join Person.EmailAddress e
--full outer join Person.EmailAddress e
on
	e.BusinessEntityID = p.BusinessEntityID
