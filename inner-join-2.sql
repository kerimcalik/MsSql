select
	count(*) as total, 
	d.Name
from
	HumanResources.Employee e
inner join HumanResources.EmployeeDepartmentHistory edh
on
	e.BusinessEntityID = edh.BusinessEntityID	
inner join
	HumanResources.Department d
on
	d.DepartmentID = edh.DepartmentID
--where
--	edh.DepartmentID = 11
group by d.Name
order by total desc