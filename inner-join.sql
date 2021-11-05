select 
	 e.BusinessEntityID,
	 edh.DepartmentID
from 
	HumanResources.Employee as e
inner join
HumanResources.EmployeeDepartmentHistory as edh
on
e.BusinessEntityID = edh.BusinessEntityID