update
	AdventureWorks2012.Production.Product
set
	StandardCost = 50.00, Color = 'Blue'
where 
	Color = 'black' and
	Size in('S','M','L') and
	ListPrice < 49.99 and
	SizeUnitMeasureCode is not null
