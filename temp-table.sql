create table #mert(
	id int,
	name nvarchar(50),
	surname nvarchar(50),
	emailAddress nvarchar(50)
)
insert into #mert
select 
top 5
p.BusinessEntityID,
p.FirstName,
p.LastName,
e.EmailAddress
from Person.Person p
inner join Person.EmailAddress e
on p.BusinessEntityID = e.BusinessEntityID
--insert into #mert(id,name) select id,name from Department
--insert into #mert(id,name) values(1,'adasd')
--insert into #mert(id,name) values(2,'adasd')
--insert into #mert(id,name) values(3,'adasd')
--insert into #mert(id,name) values(4,'adasd')
--insert into #mert(id,name) values(5,'adasd')

update #mert set name = 'Önder' where id = 2
select * from #mert
drop table #mert