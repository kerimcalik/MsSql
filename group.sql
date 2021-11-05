select 
	count(*) as [total],		
	FirstName,
	LastName
from Person.Person
group by FirstName,LastName
having count(*) > 4
order by total desc
